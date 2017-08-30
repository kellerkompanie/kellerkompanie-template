/*
 * Author: Belbo
 *
 * Fills a crate with ammunition for roughly a fire team for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateTeam;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

	_target addMagazineCargoGlobal [keko_loadout_primary_mag,15];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_tracer,15];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_grenadier,12];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_marksman,10];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_lmg,6];	
	_target addMagazineCargoGlobal [keko_loadout_secondary_mag,8];

	_target addWeaponCargoGlobal [keko_loadout_at,1];		
	_target addMagazineCargoGlobal [keko_loadout_at_mag,1];

	_target addMagazineCargoGlobal [keko_loadout_grenade,10];
	_target addMagazineCargoGlobal [keko_loadout_smoke_white,8];
	_target addMagazineCargoGlobal [keko_loadout_smoke_green,4];

	_target addItemCargoGlobal ["ACE_fieldDressing",50];	
	_target addItemCargoGlobal ["ACE_elasticBandage",30];
	_target addItemCargoGlobal ["ACE_quikclot",20];
	_target addItemCargoGlobal ["ACE_morphine",10];
	_target addItemCargoGlobal ["ACE_epinephrine",10];
	_target addItemCargoGlobal ["ACE_tourniquet",10];
	_target addItemCargoGlobal ["ACE_bodyBag",2];

	_target addItemCargoGlobal ["ACE_CableTie",2];
		
	nil;
} count _this;

true;