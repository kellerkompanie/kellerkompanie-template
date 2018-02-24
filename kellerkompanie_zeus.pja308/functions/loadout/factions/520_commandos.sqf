// Commandos
keko_loadout_list = [
	["---- Commandos ----", ""],
	["Officer", "LEA"],	
	["Section Commander", "SEC"],
	["Team Leader", "FTL"],
	["Radio Operator", "RAD"],
	["Medic", "MED"],
	["Rifleman / Ammo Carrier", "RIF"],
	["Machine Gunner (Bren)", "BRE"],
	["Asst. Bren Gunner", "ABR"],
	["AT Gunner", "SAT"],
	["Asst. AT Gunner", "AAT"],
	["Sapper", "SAP"]		
];


["put", ["#PRIMARY_MAG_LEE", "fow_10Rnd_303"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_PIAT", "fow_1Rnd_piat_HEAT"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_BREN", "fow_30Rnd_303_bren"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_THOMPSON", "fow_30Rnd_45acp"]] call keko_loadout_keywords;	 

["put", ["#WEAPON_LEE", "fow_w_leeenfield_no4mk1"]] call keko_loadout_keywords;	
["put", ["#WEAPON_PIAT", "fow_w_piat"]] call keko_loadout_keywords;	
["put", ["#WEAPON_BREN", "fow_w_bren"]] call keko_loadout_keywords;	
["put", ["#WEAPON_THOMPSON", "fow_w_m1a1_thompson"]] call keko_loadout_keywords;	

["put", ["#WEAPON_WEBLEY", "fow_w_webley"]] call keko_loadout_keywords;

["put", ["#SECONDARY_WEBLEY", "fow_6Rnd_455"]] call keko_loadout_keywords;

["put", ["#GRENADE", "fow_e_no36mk1"]] call keko_loadout_keywords;
["put", ["#SMOKE", "fow_e_no77"]] call keko_loadout_keywords;

["put", ["#BACKPACK_AAT", "fow_b_uk_piat_at"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ABR", "fow_b_uk_bergenpack_bren"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SAT", "fow_b_uk_piat_at"]] call keko_loadout_keywords;
["put", ["#BACKPACK_BRE", "fow_b_uk_bergenpack_bren"]] call keko_loadout_keywords; 
["put", ["#BACKPACK_MED", "fow_b_uk_bergenpack_medic"]] call keko_loadout_keywords;
["put", ["#BACKPACK_LEA", "fow_b_uk_bergenpack_thompson"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RAD", "fow_b_uk_p37_radio_blanco"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RIF", "fow_b_uk_bergenpack_rifleman"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SEC", "fow_b_uk_bergenpack_thompson"]] call keko_loadout_keywords;
["put", ["#BACKPACK_FTL", "fow_b_uk_bergenpack_thompson"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SAP", "fow_b_uk_bergenpack"]] call keko_loadout_keywords;



["put", ["DEFAULT", ["fow_u_uk_bd40_commando_01_private"]]] call keko_loadout_uniform;


["put", ["DEFAULT", ["fow_v_uk_base_green"]]] call keko_loadout_vest;
["put", ["ABR", ["fow_v_uk_bren_green"]]] call keko_loadout_vest;
["put", ["BRE", ["fow_v_uk_bren_green"]]] call keko_loadout_vest;
["put", ["LEA", ["fow_v_uk_officer_green"]]] call keko_loadout_vest;
["put", ["SEC", ["fow_v_uk_sten_green"]]] call keko_loadout_vest;
["put", ["FTL", ["fow_v_uk_sten_green"]]] call keko_loadout_vest;


["put", ["DEFAULT", ["#PRIMARY_MAG_LEE"]]] call keko_loadout_primary_mag;
["put", ["LEA", ["#PRIMARY_MAG_THOMPSON"]]] call keko_loadout_primary_mag;
["put", ["SEC", ["#PRIMARY_MAG_THOMPSON"]]] call keko_loadout_primary_mag;
["put", ["FTL", ["#PRIMARY_MAG_THOMPSON"]]] call keko_loadout_primary_mag;
["put", ["SAT", ["#PRIMARY_MAG_PIAT"]]] call keko_loadout_primary_mag;
["put", ["BRE", ["#PRIMARY_MAG_BREN"]]] call keko_loadout_primary_mag;


["put", ["DEFAULT", []]] call keko_loadout_secondary_mag;
["put", ["LEA", ["#SECONDARY_WEBLEY"]]] call keko_loadout_secondary_mag;
["put", ["SEC", ["#SECONDARY_WEBLEY"]]] call keko_loadout_secondary_mag;
["put", ["FTL", ["#SECONDARY_WEBLEY"]]] call keko_loadout_secondary_mag;
["put", ["SAT", ["#SECONDARY_WEBLEY"]]] call keko_loadout_secondary_mag;


["put", ["DEFAULT", [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_KSF1"]]]] call keko_loadout_uniform_inventory;
["put", ["LEA", [[10, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_KSF1"],[1, "ACE_MapTools"],[1, "#SECONDARY_WEBLEY"]]]] call keko_loadout_uniform_inventory;
["put", ["SEC", [[10, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_KSF1"],[1, "ACE_MapTools"],[1, "#SECONDARY_WEBLEY"]]]] call keko_loadout_uniform_inventory;
["put", ["FTL", [[10, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_KSF1"],[1, "ACE_MapTools"],[1, "#SECONDARY_WEBLEY"]]]] call keko_loadout_uniform_inventory;
["put", ["SAT", [[11, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_KSF1"],[1, "#SECONDARY_WEBLEY"]]]] call keko_loadout_uniform_inventory;


["put", ["DEFAULT", [[8, "#PRIMARY_MAG_LEE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["LEA", [[5, "#PRIMARY_MAG_THOMPSON"]]]] call keko_loadout_vest_inventory;
["put", ["SEC", [[10, "#PRIMARY_MAG_THOMPSON"],[2, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["FTL", [[10, "#PRIMARY_MAG_THOMPSON"],[2, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["BRE", [[9, "#PRIMARY_MAG_BREN"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["ABR", [[8, "#PRIMARY_MAG_LEE"],[2, "#GRENADE"],[1, "ACE_EntranchingTool"]]]] call keko_loadout_vest_inventory;
["put", ["SAT", [[1, "#GRENADE"],[7, "#SECONDARY_WEBLEY"],[1, "#PRIMARY_MAG_PIAT"]]]] call keko_loadout_vest_inventory;
["put", ["MED", [[8, "ACE_epinephrine"],[4, "ACE_morphine"],[1, "ACE_surgicalKit"],[3, "ACE_tourniquet"],[5, "#PRIMARY_MAG_LEE"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["fow_h_uk_beret_commando"]]] call keko_loadout_helmet;


["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["AAT", ["#BACKPACK_AAT"]]] call keko_loadout_backpack;
["put", ["ABR", ["#BACKPACK_ABR"]]] call keko_loadout_backpack;
["put", ["SAT", ["#BACKPACK_SAT"]]] call keko_loadout_backpack;
["put", ["BRE", ["#BACKPACK_BRE"]]] call keko_loadout_backpack;
["put", ["MED", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_LEA"]]] call keko_loadout_backpack;
["put", ["RAD", ["#BACKPACK_RAD"]]] call keko_loadout_backpack;
["put", ["RIF", ["#BACKPACK_RIF"]]] call keko_loadout_backpack;
["put", ["SEC", ["#BACKPACK_SEC"]]] call keko_loadout_backpack;
["put", ["FTL", ["#BACKPACK_FTL"]]] call keko_loadout_backpack;
["put", ["SAP", ["#BACKPACK_SAP"]]] call keko_loadout_backpack;



["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["AAT", [[3, "#PRIMARY_MAG_PIAT"]]]] call keko_loadout_backpack_inventory;
["put", ["ABR", [[9, "#PRIMARY_MAG_BREN"],[2,"#GRENADE"]]]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[3, "#PRIMARY_MAG_PIAT"]]]] call keko_loadout_backpack_inventory;
["put", ["BRE", [[9, "#PRIMARY_MAG_BREN"],[2,"#GRENADE"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[2, "ACE_salineIV"],[2, "ACE_salineIV_500"],[40, "ACE_elasticBandage"],[10, "adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[2, "#GRENADE"],[2, "#SMOKE"],[6, "#PRIMARY_MAG_THOMPSON"],[6, "#PRIMARY_MAG_LEE"]]]] call keko_loadout_backpack_inventory;
["put", ["RAD", [[6, "#PRIMARY_MAG_LEE"],[2, "#GRENADE"],[2, "#SMOKE"]]]] call keko_loadout_backpack_inventory;
["put", ["RIF", [[10, "#PRIMARY_MAG_LEE"],[5, "#PRIMARY_MAG_THOMPSON"]]]] call keko_loadout_backpack_inventory;
["put", ["SEC", [[2, "#GRENADE"],[2, "#SMOKE"],[6, "#PRIMARY_MAG_THOMPSON"],[6, "#PRIMARY_MAG_LEE"]]]] call keko_loadout_backpack_inventory;
["put", ["FTL", [[2, "#GRENADE"],[2, "#SMOKE"],[6, "#PRIMARY_MAG_THOMPSON"],[6, "#PRIMARY_MAG_LEE"]]]] call keko_loadout_backpack_inventory;
["put", ["SAP", [[1, "ACE_EntrenchingTool"],[1,"ACE_wirecutter"],[1,"ACE_LIB_LadungPM"],[1,"LIB_ToolKit"],[1,"ACE_LIB_FireCord"],[1,"LIB_Ladung_Big_MINE_mag"]]]] call keko_loadout_backpack_inventory;



["put", ["DEFAULT", ["#WEAPON_LEE"]]] call keko_loadout_primary_weapon;
["put", ["SAT", ["#WEAPON_PIAT"]]] call keko_loadout_primary_weapon;
["put", ["BRE", ["#WEAPON_BREN"]]] call keko_loadout_primary_weapon;
["put", ["LEA", ["#WEAPON_THOMPSON"]]] call keko_loadout_primary_weapon;
["put", ["SEC", ["#WEAPON_THOMPSON"]]] call keko_loadout_primary_weapon;
["put", ["FTL", ["#WEAPON_THOMPSON"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", []]] call keko_loadout_secondary_weapon;
["put", ["SAT", ["#WEAPON_WEBLEY"]]] call keko_loadout_secondary_weapon;
["put", ["LEA", ["#WEAPON_WEBLEY"]]] call keko_loadout_secondary_weapon;
["put", ["SEC", ["#WEAPON_WEBLEY"]]] call keko_loadout_secondary_weapon;
["put", ["FTL", ["#WEAPON_WEBLEY"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["fow_i_dienstglas"]]] call keko_loadout_optics;
["put", ["SEC", ["fow_i_dienstglas"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["SAP", [["ACE_isEngineer",2,true]]]] call keko_loadout_attributes;


["put", ["DEFAULT", []]] call keko_loadout_linkable_items;	
["put", ["RAD", ["ItemRadio"]]] call keko_loadout_linkable_items;