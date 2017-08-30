/*
 * Author: Belbo
 *
 * Fills a crate with regular ammunition for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateNormal;
 *
 * Public: Yes
 */
 
//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

	_target addMagazineCargoGlobal [keko_loadout_primary_mag,30];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_tracer,30];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_grenadier,10];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_marksman,10];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_lmg,10];	
	_target addMagazineCargoGlobal [keko_loadout_secondary_mag,4];

	_target addMagazineCargoGlobal [keko_loadout_grenade,4];
	_target addMagazineCargoGlobal [keko_loadout_smoke_white,4];
	_target addMagazineCargoGlobal [keko_loadout_smoke_green,4];
		
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_grenadier,10];
	_target addMagazineCargoGlobal ["UGL_FlareYellow_F",4];
	
	nil;
} count _this;

true;