/*
 * Author: Belbo
 *
 * Fills a crate with stuff for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateStuff;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;
	
	_target addMagazineCargoGlobal ["murshun_cigs_matches",10];
	_target addMagazineCargoGlobal ["murshun_cigs_cigpack",20];
	_target addMagazineCargoGlobal ["immersion_pops_poppack",10];

	_target addItemCargoGlobal ["ACE_banana",10];
	
	nil;
} count _this;

true;