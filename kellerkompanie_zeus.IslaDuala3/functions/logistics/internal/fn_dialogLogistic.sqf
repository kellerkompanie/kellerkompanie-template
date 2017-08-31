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