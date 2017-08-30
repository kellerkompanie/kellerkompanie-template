/*
 * Author: Belbo
 *
 * Fills a crate with MG ammunition for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateMG;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

	_target addMagazineCargoGlobal [keko_loadout_primary_mag_mmg, 10];
	_target addBackpackCargoGlobal [keko_loadout_backpack_autorifle, 1];	
	_target addItemCargoGlobal ["ACE_SpareBarrel", 2];
		
	nil;
} count _this;

true;