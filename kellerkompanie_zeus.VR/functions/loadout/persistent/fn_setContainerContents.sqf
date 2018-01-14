//fn_setContainerContents.sqf
private _self = call compile _fnc_scriptName;

private _fnc_addContainer = {
	params [
		["_obj", objNull, [objNull]],
		["_type", "", [""]]
	];

	private _r = objNull;
	if(!isNull _obj) then {
		private _old = everyContainer _obj;
		
		if(_type isKindOf ["Bag_base", configFile >> "CfgVehicles"]) then {
			_obj addBackpackCargoGlobal [_type, 1];
		} else {
			_obj addItemCargoGlobal [_type, 1];
		};
		
		private _new = (everyContainer _obj) - _old;
		if(count _new == 1) then {
			_r = _new select 0;
		} else {
			["_fnc_addContainer: Failed to add container to object. _this = %1", _this] call BIS_fnc_error;
		};
	} else {
		["_fnc_addContainer: Invalid parameter. _args = %1", _args] call BIS_fnc_error;
	};
	_r
};

params [
	"_object", 
	"_containerData"
];

{
	_x params [
		"_type",
		"_items",
		"_magazines",
		"_weapons"
	];

	_container = [_object, _type] call _fnc_addContainer;

	{ _container addItemCargoGlobal [_x, _items select 1 select _forEachIndex]; } forEach (_items select 0);	
	{ _container addMagazineCargoGlobal [_x, _magazines select 1 select _forEachIndex]; } forEach (_magazines select 0);
	{ _container addWeaponCargoGlobal [_x, _weapons select 1 select _forEachIndex]; } forEach (_weapons select 0);	

} forEach _containerData;