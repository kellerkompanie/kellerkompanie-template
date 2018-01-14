//fn_getContainerContents.sqf
params ["_object"];

private _containerData = [];

{
	_x params [
		"_xType",
		"_xObj"
	];
	
	private _items = getItemCargo _xObj;
	private _mags = getMagazineCargo _xObj;	
	private _weapons = weaponsItemsCargo _xObj;
		
	_containerData pushback [_xType, _items, _mags, _weapons];
} forEach everyContainer _object;

_containerData