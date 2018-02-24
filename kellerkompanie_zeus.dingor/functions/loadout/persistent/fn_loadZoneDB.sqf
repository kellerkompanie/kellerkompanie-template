params ["_object","_radius","_name","_caller"];

if(!isServer) exitWith{ diag_log "keko_persistency ERROR: code needs to be executed on server"; false; };

_key = missionNamespace getVariable ["keko_persistency_key", "PLACE_YOUR_KEY_HERE"];
if(_key isEqualTo "PLACE_YOUR_KEY_HERE") exitWith {	diag_log "keko_persistency ERROR: no key set"; false; };

_fileName = format["%1_zone_%2", _key, _name];

diag_log format["_fileName: %1", _fileName];

_crates = [_fileName, _name, "crates", "ARRAY"] call iniDB_read; 
_vehicles = [_fileName, _name, "vehicles", "ARRAY"] call iniDB_read; 
_objects = [_fileName, _name, "objects", "ARRAY"] call iniDB_read;

diag_log format["loaded crates: %1", str _crates];
diag_log format["loaded vehicles: %1", str _vehicles];
diag_log format["loaded objects: %1", str _objects];

_nearestCrates = nearestObjects [_object, ["ReammoBox_F"], _radius];
_nearestVehicles = nearestObjects [_object, ["Car", "Ship", "StaticWeapon", "Helicopter"], _radius];
_nearestObjects = nearestObjects [_object, ["Land_BagFence_Long_F","Land_BagFence_Short_F","Land_BagFence_Round_F","Land_BagBunker_Small_F","Land_BagBunker_Tower_F","Land_BagBunker_01_small_green_F","Land_HBarrier_01_tower_green_F","Land_BagFence_01_long_green_F","Land_BagFence_01_round_green_F","Land_BagFence_01_short_green_F","CamoNet_BLUFOR_F","CamoNet_BLUFOR_open_F","CamoNet_BLUFOR_big_F","Land_HBarrier_3_F","Land_HBarrier_5_F","Land_HBarrier_Big_F","Land_HBarrier_01_line_3_green_F","Land_HBarrier_01_line_5_green_F","Land_HBarrier_01_big_4_green_F","ACE_envelope_big","GRAD_envelope_gigant","ACE_envelope_small","GRAD_envelope_vehicle"], _radius];

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
} forEach _nearestCrates;

{
	deleteVehicle _x;
} forEach _nearestVehicles;

{
	deleteVehicle _x;
} forEach _nearestObjects;

{
	_x params["_class","_pos","_dir","_containerContent"];

	_object =  createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
	_object setDir _dir;

	[_object, _containerContent] call keko_fnc_setContainerContent;

} forEach _crates;

{
	_x params["_class","_pos","_dir","_containerContent","_fuel"];
	
	_object = createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
	_object setDir _dir;

	_object setFuel _fuel;

	[_object, _containerContent] call keko_fnc_setContainerContent;

} forEach _vehicles;

{
	_class = _x select 0;
	_pos = _x select 1;
	_dir = _x select 2;

	_object =  createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
	_object setDir _dir;

} forEach _objects;

true;