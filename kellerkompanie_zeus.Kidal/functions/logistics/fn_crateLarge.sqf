/*
 * Author: Belbo
 *
 * Fills a crate with equipment and ammunition for roughly a whole squad for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateLarge;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

		
	_target addMagazineCargoGlobal [keko_loadout_primary_mag,50];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_tracer,50];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_grenadier,50];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_marksman,50];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_lmg,10];
	_target addMagazineCargoGlobal [keko_loadout_primary_mag_mmg,10];
	_target addMagazineCargoGlobal [keko_loadout_secondary_mag,10];

	_target addWeaponCargoGlobal [keko_loadout_at,4];
	_target addMagazineCargoGlobal [keko_loadout_at_mag,4];

	_target addWeaponCargoGlobal [keko_loadout_at_spec,1];
	_target addMagazineCargoGlobal [keko_loadout_at_spec_mag,4];

	_target addWeaponCargoGlobal [keko_loadout_aa_spec,1];
	_target addMagazineCargoGlobal [keko_loadout_aa_spec_mag,4];

	_target addBackpackCargoGlobal [keko_loadout_backpack_medic, 1];
	_target addBackpackCargoGlobal [keko_loadout_backpack_autorifle, 1];
	_target addBackpackCargoGlobal [keko_loadout_backpack_grenadier, 1];
	_target addBackpackCargoGlobal [keko_loadout_backpack_engineer, 1];
	_target addBackpackCargoGlobal [keko_loadout_backpack_rifleman_at, 1];
	_target addBackpackCargoGlobal [keko_loadout_backpack_at, 1];

	_target addItemCargoGlobal [keko_loadout_nvg, 10];

	//grenades
	switch (true) do {
		case (_param_faction > 12 && _param_faction < 17): {
			// BW
			_target addMagazineCargoGlobal ["BWA3_DM51A1",20];
			_target addMagazineCargoGlobal ["BWA3_DM25",20];
			_target addMagazineCargoGlobal ["BWA3_DM32_Orange",20];
			_target addMagazineCargoGlobal ["BWA3_DM32_Yellow",10];
		};
		case (_param_faction > 3 && _param_faction < 8): {
			// RHS US Army and Marines
			_target addMagazineCargoGlobal ["rhs_mag_m67",20];
			_target addMagazineCargoGlobal ["rhs_mag_an_m8hc",20];
			_target addMagazineCargoGlobal ["rhs_mag_m18_green",10];
			_target addMagazineCargoGlobal ["rhs_mag_m18_red",10];
			_target addMagazineCargoGlobal ["rhs_mag_m18_yellow",10];
		};
		case (_param_faction > 7 && _param_faction < 13): {
			// BAF
			_target addMagazineCargoGlobal ["HandGrenade",20];
			_target addMagazineCargoGlobal ["UK3CB_BAF_SmokeShell",20];
			_target addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellGreen",10];
			_target addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellRed",10];
			_target addMagazineCargoGlobal ["UK3CB_BAF_SmokeShellYellow",10];
		};
		default {
			// Vanilla
			_target addMagazineCargoGlobal ["HandGrenade",10];
			_target addMagazineCargoGlobal ["MiniGrenade",10];
			_target addMagazineCargoGlobal ["SmokeShell",20];
			_target addMagazineCargoGlobal ["SmokeShellGreen",10];
			_target addMagazineCargoGlobal ["SmokeShellRed",10];
			_target addMagazineCargoGlobal ["SmokeShellYellow",10];
		};
	};

	_target addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",20];
	_target addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",5];
	_target addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",5];
	_target addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",5];
	_target addMagazineCargoGlobal ["UGL_FlareYellow_F",10];
	
	
	_target addMagazineCargoGlobal ["B_IR_Grenade",6];
	

	ACE_fieldDressing = 100;
	
	ACE_elasticBandage = 100;
	ACE_quikclot = 50;
	
	ACE_atropine = 10;
	ACE_epinephrine = 20;
	ACE_morphine = 20;
	ACE_tourniquet = 24;
	ACE_plasmaIV = 0;
	ACE_plasmaIV_500 = 0;
	ACE_plasmaIV_250 = 0;
	ACE_salineIV = 24;
	ACE_salineIV_500 = 24;
	ACE_salineIV_250 = 0;
	ACE_bloodIV = 0;
	ACE_bloodIV_500 = 0;
	ACE_bloodIV_250 = 0;
	ACE_bodyBag = 10;
	ACE_personalAidKit = 1;
	
	ACE_surgicalKit = 2;		

	ACE_SpareBarrel = 1;
	ACE_MapTools = 5;
	ACE_CableTie = 20;

	ACE_IR_Strobe = 6;
	ACE_HandFlare_Red = 10;
	
	nil;
} count _this;

true;