/*
 * Original Author: Belbo [SeL] http://spezialeinheit-luchs.de/
 * Edited by Schwaggot 
 *
 * Contains all the variables important for tfar in SeL missions. Basic settings have to be set in cba_settings.sqf in main mission folder.
 * Put at the very start of your init.sqf.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * tfar present and set? - <BOOL>
 *
 * Example:
 * [] call compile preprocessFileLineNumbers "fn_tfarSettings.sqf";
 *
 * Public: No
 */

if (isClass(configFile >> "CfgPatches" >> "tfar_core")) exitWith {
	//general:
	tfar_terrain_interception_coefficient = 1.0;
	tfar_speakerDistance = 10;

	tf_sendingDistanceMultiplicator = 50.0;
	tf_receivingDistanceMultiplicator = 50.0;

	//radios:
	TFAR_DefaultRadio_Personal_West = "tfar_anprc152";
	TFAR_DefaultRadio_Personal_East = "tfar_fadak";
	TFAR_DefaultRadio_Personal_Independent = "tfar_anprc148jem";
	
	TFAR_DefaultRadio_Rifleman_West = "TFAR_rf7800str";
	TFAR_DefaultRadio_Rifleman_East = "tfar_pnr1000a";
	TFAR_DefaultRadio_Rifleman_Independent = "tfar_anprc154";
	
	//tfar serious mode channel name and password:
	tf_radio_channel_name = "TFAR";
	tf_radio_channel_password = "fdc190k";
	
	//update the plugin settings:
	call TFAR_fnc_sendPluginConfig;

	//side settings:
	//blufor:
	private _defaultFrequencies_sr_west = ["30","31","32","33","34","35","36","37"];
	private _defaultFrequencies_lr_west = ["30","40","50","60","70"];
	private _west_code = "_bluefor";
	
	//opfor:
	private _defaultFrequencies_sr_east = ["30","31","32","33","34","35","36","37"];
	private _defaultFrequencies_lr_east = ["30","40","50","60","70"];
	private _east_code = "_opfor";
	
	//indfor:
	private _defaultFrequencies_sr_independent = ["30","31","32","33","34","35","36","37"];
	private _defaultFrequencies_lr_independent = ["30","40","50","60","70"];
	private _ind_code = "";		//leave blank if you want indfor to use the code of whatever side it's affiliated with or "_independent" if it's not affiliated to anyone.
	
	//// don't edit below this line ////
	
	_settingsSRWest = false call TFAR_fnc_generateSRSettings;
	_settingsLrWest = false call TFAR_fnc_generateLrSettings;
	
	_settingsSREast = false call TFAR_fnc_generateSRSettings;
	_settingsLrEast = false call TFAR_fnc_generateLrSettings;
	
	_settingsSRGuer = false call TFAR_fnc_generateSRSettings;
	_settingsLrGuer = false call TFAR_fnc_generateLrSettings;
	
	_settingsSRWest set [2, _defaultFrequencies_sr_west];
	_settingsSRWest set [4, _west_code];
	TFAR_freq_sr_west = _settingsSRWest;
	
	_settingsLrWest set [2, _defaultFrequencies_lr_west];
	_settingsLrWest set [4, _west_code];
	TFAR_freq_lr_west = _settingsLrWest;
	
	_settingsSREast set [2, _defaultFrequencies_sr_east];
	_settingsSREast set [4, _east_code];
	TFAR_freq_sr_east = _settingsSREast;
	
	_settingsLrEast set [2, _defaultFrequencies_lr_east];
	_settingsLrEast set [4, _east_code];
	TFAR_freq_lr_east = _settingsLrEast;
	
	_settingsSRGuer set [2, _defaultFrequencies_sr_independent];
	_settingsLrGuer set [2, _defaultFrequencies_lr_independent];
	TFAR_freq_sr_independent = _settingsSRGuer;
	TFAR_freq_lr_independent = _settingsLrGuer;
	
	if ( _ind_code isEqualTo "" ) then {
		_ind_code = call {
			if ([independent,west] call BIS_fnc_sideIsFriendly) exitWith {_west_code};
			if ([independent,east] call BIS_fnc_sideIsFriendly) exitWith {_east_code};
			"_independent"
		};
	};
	TFAR_freq_sr_independent set [4, _ind_code];
	TFAR_freq_lr_independent set [4, _ind_code];
	
	missionNamespace setVariable ["tf_west_radio_code",_west_code];
	missionNamespace setVariable ["tf_east_radio_code",_east_code];
	missionNamespace setVariable ["tf_independent_radio_code",_ind_code];

	
};