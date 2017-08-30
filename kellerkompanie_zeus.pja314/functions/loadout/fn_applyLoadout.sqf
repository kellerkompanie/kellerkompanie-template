_param_faction = "param_faction" call BIS_fnc_getParamValue;

_param_give_map = "param_give_map" call BIS_fnc_getParamValue;
_param_give_gps = "param_give_gps" call BIS_fnc_getParamValue;
_param_give_nvg = "param_give_nvg" call BIS_fnc_getParamValue;
_param_give_radio = "param_give_radio" call BIS_fnc_getParamValue;

_prefix = _this select 3; // 0 = Lead, 1 = Sergeant, 2 = SQL, 3 = FTL, 4 = Rifleman, 5 = Grenadier, 6 = Marksman, 7 = Autorifleman, 8 = Autorifleman Asst., 9 = Rifleman AT, 10 = Engineer, 11 = Medic

if(!keko_loadout_variables_set) then {
	call keko_fnc_loadoutVariables;
};

player setVariable ["ace_medical_medicClass", 1, false];
player setVariable ["ace_medical_medicClass", 2, false];
player setVariable ["ACE_isEngineer", 1, false];
player setVariable ["ACE_isEngineer", 2, false];

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

_uniform = ["get", "DEFAULT"] call keko_loadout_uniform;
_uniform_inventory = ["get", "DEFAULT"] call keko_loadout_uniform_inventory;
_vest = ["get", "DEFAULT"] call keko_loadout_vest;
_vest_inventory = ["get", "DEFAULT"] call keko_loadout_vest_inventory;
_backpack =  ["get", "DEFAULT"] call keko_loadout_backpack;
_backpack_inventory = ["get", "DEFAULT"] call keko_loadout_backpack_inventory;
_helmet = ["get", "DEFAULT"] call keko_loadout_helmet;

_primary_weapon = ["get", "DEFAULT"] call keko_loadout_primary_weapon;
_primary_items = ["get", "DEFAULT"] call keko_loadout_primary_items;
_primary_mag = ["get", "DEFAULT"] call keko_loadout_primary_mag;

_secondary_weapon = ["get", "DEFAULT"] call keko_loadout_secondary_weapon;
_secondary_items = ["get", "DEFAULT"] call keko_loadout_secondary_items;
_secondary_mag = ["get", "DEFAULT"] call keko_loadout_secondary_mag;

_tertiary_weapon = ["get", "DEFAULT"] call keko_loadout_tertiary_weapon;
_tertiary_items = ["get", "DEFAULT"] call keko_loadout_tertiary_items;
_tertiary_mag = ["get", "DEFAULT"] call keko_loadout_tertiary_mag;

_optics = ["get", "DEFAULT"] call keko_loadout_optics;

_goggles = ["get", "DEFAULT"] call keko_loadout_goggles;

_attributes = ["get", "DEFAULT"] call keko_loadout_attributes;

_linkable_items = ["get", "DEFAULT"] call keko_loadout_linkable_items;


if(["containsKey", _prefix] call keko_loadout_uniform) then {
	_uniform = ["get", _prefix] call keko_loadout_uniform;
};
if(["containsKey", _prefix] call keko_loadout_uniform_inventory) then {
	_uniform_inventory = ["get", _prefix] call keko_loadout_uniform_inventory;
};
if(["containsKey", _prefix] call keko_loadout_vest) then {
	_vest = ["get", _prefix] call keko_loadout_vest;
};
if(["containsKey", _prefix] call keko_loadout_vest_inventory) then {
	_vest_inventory = ["get", _prefix] call keko_loadout_vest_inventory;
};
if(["containsKey", _prefix] call keko_loadout_backpack) then {
	_backpack = ["get", _prefix] call keko_loadout_backpack;
};
if(["containsKey", _prefix] call keko_loadout_backpack_inventory) then {
	_backpack_inventory = ["get", _prefix] call keko_loadout_backpack_inventory;
};
if(["containsKey", _prefix] call keko_loadout_helmet) then {
	_helmet = ["get", _prefix] call keko_loadout_helmet;
};

if(["containsKey", _prefix] call keko_loadout_primary_weapon) then {
	_primary_weapon = ["get", _prefix] call keko_loadout_primary_weapon;
};
if(["containsKey", _prefix] call keko_loadout_primary_items) then {
	_primary_items = ["get", _prefix] call keko_loadout_primary_items;
};
if(["containsKey", _prefix] call keko_loadout_primary_mag) then {
	_primary_mag = ["get", _prefix] call keko_loadout_primary_mag;
};

if(["containsKey", _prefix] call keko_loadout_secondary_weapon) then {
	_secondary_weapon = ["get", _prefix] call keko_loadout_secondary_weapon;
};
if(["containsKey", _prefix] call keko_loadout_secondary_items) then {
	_secondary_items = ["get", _prefix] call keko_loadout_secondary_items;
};
if(["containsKey", _prefix] call keko_loadout_secondary_mag) then {
	_secondary_mag = ["get", _prefix] call keko_loadout_secondary_mag;
};

if(["containsKey", _prefix] call keko_loadout_tertiary_weapon) then {
	_tertiary_weapon = ["get", _prefix] call keko_loadout_tertiary_weapon;
};
if(["containsKey", _prefix] call keko_loadout_tertiary_items) then {
	_tertiary_items = ["get", _prefix] call keko_loadout_tertiary_items;
};
if(["containsKey", _prefix] call keko_loadout_tertiary_mag) then {
	_tertiary_mag = ["get", _prefix] call keko_loadout_tertiary_mag;
};

if(["containsKey", _prefix] call keko_loadout_goggles) then {
	_goggles = ["get", _prefix] call keko_loadout_goggles;
};

if(["containsKey", _prefix] call keko_loadout_optics) then {
	_optics = ["get", _prefix] call keko_loadout_optics;
};

if(["containsKey", _prefix] call keko_loadout_attributes) then {
	_attributes = ["get", _prefix] call keko_loadout_attributes;
};

if(["containsKey", _prefix] call keko_loadout_linkable_items) then {
	_linkable_items = ["get", _prefix] call keko_loadout_linkable_items;
};



if(count _uniform != 0) then {
	player forceAddUniform (selectRandom _uniform);
	
	if(count _vest_inventory != 0) then {
		{
			for "_i" from 1 to (_x select 0) do {player addItemToUniform (_x select 1);};		
		} forEach _uniform_inventory;
	};
};

if(count _vest != 0) then {
	player addVest (selectRandom _vest);

	if(count _vest_inventory != 0) then {		
		{ 
			for "_i" from 1 to (_x select 0) do {player addItemToVest (_x select 1);};		
		} forEach _vest_inventory;
	};
};

if(count _backpack != 0) then {
	player addBackpack (selectRandom _backpack);

	if(count _backpack_inventory != 0) then {		
		{ 
			for "_i" from 1 to (_x select 0) do {player addItemToBackpack (_x select 1);};		
		} forEach _backpack_inventory;
	};
};

if(count _helmet != 0) then {
	player addHeadgear (selectRandom _helmet);
};


if(count _primary_weapon != 0) then {
	player addWeapon (selectRandom _primary_weapon);

	if(count _primary_items != 0) then {
		{ 
			player addPrimaryWeaponItem _x; 
		} forEach _primary_items;
	};	

	if(count _primary_mag != 0) then {
		player addItemToVest (_primary_mag select 0); 
	};
};

if(count _secondary_weapon != 0) then {
	player addWeapon (selectRandom _secondary_weapon);

	if(count _secondary_items != 0) then {
		{
			player addHandgunItem _x; 
		} forEach _secondary_items;
	};	

	if(count _secondary_mag != 0) then {
		player addItemToUniform (_secondary_mag select 0); 
	};
};

if(count _tertiary_weapon != 0) then {
	player addWeapon (selectRandom _tertiary_weapon);

	if(count _tertiary_items != 0) then {
		{ 
			player addSecondaryWeaponItem _x; 
		} forEach _tertiary_items;
	};

	if(count _tertiary_mag != 0) then {
		player addItemToBackpack (_tertiary_mag select 0); 
	};
};


if(count _goggles != 0) then {
	player addGoggles (selectRandom _goggles);
};

if(count _optics != 0) then {
	player addWeapon (selectRandom _optics);
};

if(count _attributes != 0) then {
	{ 
		player setVariable _x; 
	} forEach _attributes;
};

// Set insignia
/*_insignia = selectRandom keko_loadout_insignia;
if(!isNil "_insignia") then {
	[player, _insignia] call bis_fnc_setUnitInsignia;
};*/

player setVariable ["keko_current_role", _prefix];





// ----- BEGIN Link Items ----- //


// give map and compass
if (_param_give_map == 1) then {
	player linkItem "ItemMap";
	player linkItem "ItemCompass";	
};



// add night gear
switch(_param_give_nvg) do {
	case 1: {
		// Headlamp white
		player linkItem "SAN_Headlamp_v1";
	};
	case 2: {
		// Headlamp color
		player linkItem "SAN_Headlamp_v2";
	}; 
	case 3: {
		// NVG 1.Gen
		player linkItem "ACE_NVG_Gen1";
	}; 
	case 4: {
		// NVG 2.Gen
		player linkItem "ACE_NVG_Gen2";
	}; 
	case 5: {
		// NVG 3.Gen
		player linkItem "NVGoggles_OPFOR";
	}; 
	case 6: {
		// NVG 4.Gen
		player linkItem "ACE_NVG_Gen4";
	}; 
	case 7: {
		// NVG Wide
		player linkItem "ACE_NVG_Wide";
	}; 
	case 8: {
		// Wärmesicht
		player linkItem "NVGogglesB_blk_F";
	}; 
	case 9: {
		// (main) Ami Mono
		player linkItem "meu_ANPVS_14";
	}; 
	case 10: {
		// (main) Ami Dual
		player linkItem "meu_ANPVS_15";
	}; 
	case 11: {
		// (main) BAF Mono
		player linkItem "UK3CB_BAF_HMNVS";
	}; 
	case 12: {
		// (main) Sovjet Mono
		player linkItem "rhs_1PN138";
	}; 
};

if(_param_give_gps > 0 && (player getVariable "keko_current_role") != "UAV") then {
	switch (_param_give_gps) do {
		case 1: {
			//GPS
			player linkItem "ItemGPS";
		};
		case 2: {
			//GPS und MicroDAGR
			//MicroDAGR was already added to Vest, only add GPS
			player linkItem "ItemGPS";
		};
		case 3: {
			//MicroDAGR
			//MicroDAGR was already added to Vest, do nothing
		};
		case 4: {
			//cTab
			player linkItem "itemAndroid";
		};
		default {};
	};
};

// add watch
player linkItem "ItemWatch";


if(count _linkable_items != 0) then {
	{ 
		player linkItem _x; 
	} forEach _linkable_items;
};



// ----- END Link Items ----- //




/*switch(side player) do {
	case west: {
		_backpack = "B_UAV_01_backpack_F";
		player linkItem "B_UavTerminal";
	};
	case resistance: {
		_backpack = "I_UAV_01_backpack_F";
		player linkItem "I_UavTerminal";				
	};
	case east: {				
		_backpack = "O_UAV_01_backpack_F";
		player linkItem "O_UavTerminal";
	};
};*/




[player] call keko_fnc_tfarSettings;
[player] call keko_fnc_giveRadio;

[player] spawn keko_fnc_setChannels;