/*
 * Author: Belbo
 *
 * Fills a crate with support equipment for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateSupport;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

	_target addMagazineCargoGlobal [keko_loadout_smoke_white,2];	
	_target addItemCargoGlobal ["ToolKit",2];
			
	_target addItemCargoGlobal ["ACE_EntrenchingTool",2];
	_target addItemCargoGlobal ["ACE_SpraypaintRed",2];
	_target addItemCargoGlobal ["ToolKit",1];
	_target addItemCargoGlobal ["ACE_wirecutter",1];
	_target addItemCargoGlobal ["ACE_SpraypaintGreen",2];

	_target addItemCargoGlobal ["ACE_rangecard",1];
	_target addItemCargoGlobal ["ACE_sandbag",30];
	
	_target addItemCargoGlobal ["ACE_MapTools",4];
	_target addItemCargoGlobal ["ACE_CableTie",10];

	_target addItemCargoGlobal ["ACE_UAVBattery",2];
	_target addItemCargoGlobal ["ACE_DefusalKit",1];
	_target addItemCargoGlobal ["ACE_minedetector",1];
	_target addItemCargoGlobal ["ACE_RangeTable_82mm",1];
	_target addItemCargoGlobal ["ACE_IR_Strobe",4];
	_target addItemCargoGlobal ["ACE_HandFlare_Red",8];
	
	nil;
} count _this;

true;