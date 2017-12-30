// Russia EMR Summer
keko_loadout_list = [
	["---- Führung ----", ""], //0
	["Platoon Lead", "LEA"], //1
	["Platoon Sergeant", "SER"], //2
	["Platoon Medic", "DOC"], //3
	["Squad Leader", "SQL"], //4
	["Fireteam Leader", "FTL"], //5
	["Combat Life Saver", "MED"], //6
	["---- Plebs ----", ""], //7
	["Rifleman", "RIF"], //8
	["Rifleman Anti-Tank", "RAT"], //9
	["Grenadier", "GRE"], //10
	["Light Machine Gunner", "LMG"], //11
	["Light Machine Gunner Asst.", "LAS"], //12
	["---- Heavy Weapons ----", ""], //13
	["Medium Machine Gunner", "MMG"], //14
	["Medium Machine Gunner Asst.", "MAS"], //15
	["Missile Specialist Anti-Tank", "SAT"], //16
	["Missile Specialist Anti-Tank Asst.", "AAT"], //17
	["Missile Specialist Anti-Air", "SAA"], //18
	["Missile Specialist Anti-Air Asst.", "AAA"], //19
	["---- Support ----", ""], //20
	["Marksman", "MAR"], //21
	["Explosive Specialist", "EOD"], 
	["Engineer", "ENG"], 
	["Pilot", "PIL"], 
	["Forward Air Controller", "JTC"], 
	["UAV Operator", "UAV"] 
];


["put", ["#PRIMARY_MAG", "rhs_30Rnd_545x39_AK"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "rhs_30Rnd_545x39_7N6_AK"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "rhs_10Rnd_762x54mmR_7N1"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "rhs_10Rnd_762x54mmR_7N1"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "rhs_100Rnd_762x54mmR_green"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "rhs_100Rnd_762x54mmR_green"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "rhs_mag_9x18_8_57N181S"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "rhs_VOG25"]] call keko_loadout_keywords;
["put", ["#RAT_MAG", "rhs_rpg26_mag"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "rhs_rpg7_PG7VL_mag"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "rhs_mag_9k38_rocket"]] call keko_loadout_keywords;
["put", ["#GRENADE", "rhs_mag_rgn"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_green"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "rhssaf_kitbag_smb"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "rhs_assault_umbts"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_Carryall_oli"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "rhs_rpg_empty"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "rhs_weap_rpg26"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "rhs_weap_rpg7"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "rhs_weap_igla"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["rhs_uniform_emr_patchless"]]] call keko_loadout_uniform;



["put", ["DEFAULT", ["rhs_6b23_6sh116","rhs_6b23_digi_6sh92","rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz","rhs_6b23_digi_6sh92_radio","rhs_6b23_digi_6sh92_spetsnaz2"]]] call keko_loadout_vest;
["put", ["LEA", ["rhs_6b23_digi_6sh92_headset_mapcase"]]] call keko_loadout_vest;
["put", ["SER", ["rhs_6b23_digi_6sh92_headset"]]] call keko_loadout_vest;
["put", ["SQL", ["rhs_6b23_digi_6sh92_headset"]]] call keko_loadout_vest;
["put", ["FTL", ["rhs_6b23_digi_6sh92_vog_headset","rhs_6b23_6sh116_vog"]]] call keko_loadout_vest;
["put", ["MED", ["rhs_6b23_digi_medic"]]] call keko_loadout_vest;
["put", ["DOC", ["rhs_6b23_digi_medic"]]] call keko_loadout_vest;
["put", ["GRE", ["rhs_6b23_digi_6sh92_vog","rhs_6b23_6sh116_vog"]]] call keko_loadout_vest;
["put", ["ENG", ["rhs_6b23_digi_engineer"]]] call keko_loadout_vest;
["put", ["MAR", ["rhs_6b23_digi_sniper"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;
["put", ["MMG", ["#PRIMARY_MAG_MMG"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;


["put", ["FTL", ["#GRENADIER_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["GRE", ["#GRENADIER_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAA", ["#AA_MAG"]]] call keko_loadout_tertiary_mag;



["put", ["DEFAULT", keko_loadout_uniform_inventory_default]] call keko_loadout_uniform_inventory;



["put", ["DEFAULT", keko_loadout_vest_inventory_default]] call keko_loadout_vest_inventory;
["put", ["JTC", [[2, "#PRIMARY_MAG"],[2,"#PRIMARY_MAG_TRACER"],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]]]] call keko_loadout_vest_inventory;

["put", ["MED", keko_loadout_vest_inventory_medic_default]] call keko_loadout_vest_inventory;
["put", ["DOC", keko_loadout_vest_inventory_medic_default]] call keko_loadout_vest_inventory;

["put", ["MAR", [[5, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[5, "#PRIMARY_MAG_MARKSMAN_TRACER"]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[4, "#PRIMARY_MAG_LMG"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, "#PRIMARY_MAG_MMG"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;



["put", ["DEFAULT", ["rhs_6b27m_green_ess_bala","rhs_6b27m_green_ess","rhs_6b27m_green_bala","rhs_6b27m_digi","rhs_6b27m_digi_bala","rhs_6b27m_digi_ess","rhs_6b27m_digi_ess_bala","rhs_6b27m_green"]]] call keko_loadout_helmet;
["put", ["LEA", ["rhs_fieldcap_digi"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_PilotHelmetHeli_B"]]] call keko_loadout_helmet;



["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SER", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SQL", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["JTC", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["MED", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["DOC", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["LMG", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["LAS", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["MMG", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["MAS", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["FTL", ["TAC_BP_HSG_GLP2_OD"]]] call keko_loadout_backpack;
["put", ["GRE", ["TAC_BP_HSG_GLP2_OD"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["SAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["SAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["O_UAV_01_backpack_F"]]] call keko_loadout_backpack;



["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, "#PRIMARY_MAG_MMG"]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[10, "#GRENADIER_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["FTL", [[10, "#GRENADIER_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[1, "#AT_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["AAT", [[2, "#AT_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["SAA", [[1, "#AA_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["AAA", [[2, "#AA_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["LEA", []]] call keko_loadout_backpack_inventory;
["put", ["SER", []]] call keko_loadout_backpack_inventory;
["put", ["JTC", [[4,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", []]] call keko_loadout_backpack_inventory;
["put", ["MED", keko_loadout_backpack_inventory_med]] call keko_loadout_backpack_inventory;
["put", ["DOC", keko_loadout_backpack_inventory_doc]] call keko_loadout_backpack_inventory;
["put", ["ENG", keko_loadout_backpack_inventory_eng]] call keko_loadout_backpack_inventory;
["put", ["EOD", keko_loadout_backpack_inventory_eod]] call keko_loadout_backpack_inventory;



["put", ["DEFAULT", ["rhs_weap_ak74m_dtk"]]] call keko_loadout_primary_weapon;
["put", ["LEA", ["rhs_weap_ak74m_folded_dtk"]]] call keko_loadout_primary_weapon;
["put", ["FTL", ["rhs_weap_ak74m_gp25_dtk"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["rhs_weap_ak74m_gp25_dtk"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["rhs_weap_svdp"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["rhs_weap_m84"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["rhs_weap_pkp"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", ["rhs_acc_dtk","rhs_acc_2dpZenit","rhs_acc_pkas"]]] call keko_loadout_primary_items;
["put", ["GRE", ["rhs_acc_dtk","rhs_acc_pkas"]]] call keko_loadout_primary_items;
["put", ["MAR", ["rhs_acc_pso1m2"]]] call keko_loadout_primary_items;
["put", ["LMG", []]] call keko_loadout_primary_items;
["put", ["MMG", ["rhs_acc_pkas"]]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["rhs_weap_makarov_pm"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["#RAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["#SAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["#SAA_LAUNCHER"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;
["put", ["SAT", ["rhs_acc_pgo7v3"]]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;
["put", ["RAT", ["#RAT_MAG"]]] call keko_loadout_tertiary_mag;



["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["SQL", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;
["put", ["LAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["MAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["AAT", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["AAA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["JTC", ["Laserdesignator"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["O_UavTerminal"]]] call keko_loadout_linkable_items;