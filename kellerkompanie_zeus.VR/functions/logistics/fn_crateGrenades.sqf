/*
 * Author: Belbo
 *
 * Fills a crate with grenades for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateGrenades;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

_param_faction = "param_faction" call BIS_fnc_getParamValue;

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;
	
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

	nil;
} count _this;

true;