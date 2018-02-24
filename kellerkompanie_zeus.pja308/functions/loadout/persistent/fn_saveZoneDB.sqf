params ["_object","_radius","_name","_caller"];

if(!isServer) exitWith{ diag_log "keko_persistency ERROR: code needs to be executed on server"; false; };

_key = missionNamespace getVariable ["keko_persistency_key", "PLACE_YOUR_KEY_HERE"];
if(_key isEqualTo "PLACE_YOUR_KEY_HERE") exitWith {	diag_log "keko_persistency ERROR: no key set"; false; };

_fileName = format["%1_zone_%2", _key, _name];

diag_log format["_fileName: %1", _fileName];

_nearestCrates = nearestObjects [_object, ["ReammoBox_F"], _radius];
_nearestVehicles = nearestObjects [_object, ["Car", "Ship", "StaticWeapon", "Helicopter"], _radius];
_nearestObjects = nearestObjects [_object, ["Land_BagFence_Long_F","Land_BagFence_Short_F","Land_BagFence_Round_F","Land_BagBunker_Small_F","Land_BagBunker_Tower_F","Land_BagBunker_01_small_green_F","Land_HBarrier_01_tower_green_F","Land_BagFence_01_long_green_F","Land_BagFence_01_round_green_F","Land_BagFence_01_short_green_F","CamoNet_BLUFOR_F","CamoNet_BLUFOR_open_F","CamoNet_BLUFOR_big_F","Land_HBarrier_3_F","Land_HBarrier_5_F","Land_HBarrier_Big_F","Land_HBarrier_01_line_3_green_F","Land_HBarrier_01_line_5_green_F","Land_HBarrier_01_big_4_green_F","ACE_envelope_big","GRAD_envelope_gigant","ACE_envelope_small","GRAD_envelope_vehicle"], _radius];

_crates = [];
_vehicles = [];
_objects = [];

{
	_save = false;
	_deleteable = _x getVariable "keko_logistic_delete";
	if(isNil "_deleteable") then {
		_save = true;
	}
	else {
		if(_deleteable) then {
			_save = true;
		};
	};

	if(_save) then {
		_class = typeOf _x;
		_pos = position _x;
		_dir = getDir _x;		

		_containerContent = _x call keko_fnc_getContainerContent;

		_crates pushBack [ _class, _pos, _dir, _containerContent];
	};
	
} forEach _nearestCrates;

{
	_class = typeOf _x;
	_pos = position _x;
	_dir = getDir _x;

	_containerContent = _x call keko_fnc_getContainerContent;

	_fuel = fuel _x;

	_vehicles pushBack [_class, _pos, _dir, _containerContent, _fuel];
	
} forEach _nearestVehicles;

{
	_class = typeOf _x;
	_pos = position _x;
	_dir = getDir _x;	

	_objects pushBack [_class, _pos, _dir];
	
} forEach _nearestObjects;

diag_log format["saving crates: %1", str _crates];
diag_log format["saving vehicles: %1", str _vehicles];
diag_log format["saving objects: %1", str _objects];

[_fileName, _name, "crates", _crates] call iniDB_write;
[_fileName, _name, "vehicles", _vehicles] call iniDB_write;
[_fileName, _name, "objects", _objects] call iniDB_write;

true;