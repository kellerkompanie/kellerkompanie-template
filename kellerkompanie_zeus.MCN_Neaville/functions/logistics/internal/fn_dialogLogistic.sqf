/*
 * Author: Belbo
 *
 * Function executed by logistic dialog
 *
 * Arguments:
 * 0: crate selection - <STRING>
 * 1: force placement - <BOOL>
 * 2: side of inventory function to call for ammo box - <SIDE>
 * 3: position - <ARRAY>
 *
 * Return Value:
 * spawned ammo box/spare object or boolean if no item has been spawned - <OBJECT>, <BOOL>
 *
 * Example:
 * None
 *
 * Public: Yes
 */

params [
	["_crateSelection", "", [""]],
	["_forcePlacement", false, [true]],
	["_side", side (group player), [west]],
	["_position", getPosASL player, []],
	"_box"
];

_box = true;

//empty option was chosen inside dialog
if (_crateSelection isEqualTo "LOGISTIC_FNC_NIL") exitWith { ["Keine Aktion ausgewählt",5] call keko_fnc_timedHint; _box = false; };

if (_crateSelection isEqualTo "LOGISTIC_WHEEL") then {
	if (isClass(configFile >> "CfgPatches" >> "ace_repair")) then {
		_box = createVehicle ["ACE_Wheel",_position,[],0,"CAN_COLLIDE"];
		_box setPosASL _position;
	};
	if (true) exitWith {false};
}; 

if (_crateSelection isEqualTo "LOGISTIC_TRACK") then {
	if (isClass(configFile >> "CfgPatches" >> "ace_repair")) then {
		_box = createVehicle ["ACE_Track",_position,[],0,"CAN_COLLIDE"];
		_box setPosASL _position;
	};
	if (true) exitWith {false}
};

if (_crateSelection isEqualTo "LOGISTIC_FNC_DELETE") then {
	{
		_deleteable = _x getVariable "keko_logistic_delete";
		if(isNil "_deleteable") then {
			deleteVehicle _x;
		}
		else {
			if(_deleteable) then {
				deleteVehicle _x;
			};
		};		
	} count (nearestObjects [player, ["ReammoBox_F"], 3, true]);
	if (isClass(configFile >> "CfgPatches" >> "ace_repair")) then {
		{deleteVehicle _x} count (nearestObjects [player, ["ACE_Wheel"], 3, true]);
		{deleteVehicle _x} count (nearestObjects [player, ["ACE_Track"], 3, true]);
	};
	if (true) exitWith {false}
}; 


// Aufruf des ausgewählten Loadouts -> Übergabe aus Dialog
_functionForAll = {
	private _target = _this select 0;
	private _pos = _this select 1;
	_target allowDamage false;
	[_target] call keko_fnc_clearCargo;
	_target setPosASL _pos;
	
	[_target] call keko_fnc_dropLogistic;
};



_contains_key = ["containsKey", _crateSelection] call keko_logistic_crates;
if(_contains_key) then {
	_value = ["get", _crateSelection] call keko_logistic_crates;
	_crate_type = _value select 2;

	if(!isNil "_crate_type") then {
		_box = createVehicle [_crate_type, _position, [], 0, "CAN_COLLIDE"];
		[_box, _position] call _functionForAll;

		_contains_key = ["containsKey", _crateSelection] call keko_logistic_crates_content;
		if(_contains_key) then {
			_crate_content = ["get", _crateSelection] call keko_logistic_crates_content;
			[_box, _crate_content] remoteExecCall ["keko_fnc_fillCrate",2];			
		};

		_return = _box;
	};

};

if !(_forcePlacement) then {
	closeDialog 1;
};

_box;