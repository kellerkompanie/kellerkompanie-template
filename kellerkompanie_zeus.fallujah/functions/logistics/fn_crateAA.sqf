/*
 * Author: Belbo
 *
 * Fills a crate with AA ammunition for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateAA;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

	_target addWeaponCargoGlobal [keko_loadout_aa_spec,1];
	_target addBackpackCargoGlobal [keko_loadout_backpack_at,1];		
	_target addMagazineCargoGlobal [keko_loadout_aa_spec_mag,4];
		
	nil;
} count _this;

true;