// China PLA Woodland
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
	["Explosive Specialist", "EOD"], //24
	["Engineer", "ENG"], //25
	["Pilot", "PIL"], //26
	["Forward Air Controller", "JTC"], //27
	["UAV Operator", "UAV"] //28
];


["put", ["#PRIMARY_MAG", "VME_QBZ95_1_30Rnd_DBP10"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "VME_QBZ95_1_30Rnd_DBP10_Tracer_Green"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "VME_QBU88_10Rnd_DBP10"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "VME_QBU88_10Rnd_DBP10"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "VME_QJB95_1_75Rnd_DBP10"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "150Rnd_93x64_Mag"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "16Rnd_9x21_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "VME_1Rnd_HE_GL"]] call keko_loadout_keywords;
["put", ["#RAT_MAG", "vme_pla_PF89_Rocket"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "Titan_AT"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "Titan_AA"]] call keko_loadout_keywords;
["put", ["#GRENADE", "HandGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_black"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "TRYK_B_Kitbag_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "TRYK_B_AssaultPack_UCP"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_Carryall_oucamo"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_FieldPack_oucamo"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "vme_pla_PF89"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "launch_O_Titan_short_F"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "launch_O_Titan_F"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["PLA_CombatUniform_SB","PLA_CombatUniform_SBCB"]]] call keko_loadout_uniform;
["put", ["LEA", ["PLA_CombatUniform_SWCB","PLA_CombatUniform_SW"]]] call keko_loadout_uniform;

	


["put", ["DEFAULT", ["PLA_B04_RF","PLA_T15Vest_RF"]]] call keko_loadout_vest;
["put", ["LEA", ["PLA_T15Vest_RD"]]] call keko_loadout_vest;
["put", ["SER", ["PLA_T15Vest_RD"]]] call keko_loadout_vest;
["put", ["SQL", ["PLA_T15Vest_RD"]]] call keko_loadout_vest;
["put", ["LMG", ["PLA_B04_MG"]]] call keko_loadout_vest;
["put", ["MMG", ["PLA_B04_MG"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;
["put", ["MMG", ["#PRIMARY_MAG_MMG"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;


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



["put", ["DEFAULT", ["VME_PLA_Helmet","VME_PLA_Helmet_G"]]] call keko_loadout_helmet;
["put", ["LEA", ["VME_PLA_Hat"]]] call keko_loadout_helmet;
["put", ["SER", ["VME_PLA_Helmet_R_O","VME_PLA_Helmet_R"]]] call keko_loadout_helmet;
["put", ["SQL", ["VME_PLA_Helmet_R_O","VME_PLA_Helmet_R"]]] call keko_loadout_helmet;
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
["put", ["GRE", ["TAC_BP_HSG_GLP2_B"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["SAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["SAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["I_UAV_01_backpack_F"]]] call keko_loadout_backpack;
["put", ["RAT", ["B_FieldPack_oucamo"]]] call keko_loadout_backpack;


["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, "#PRIMARY_MAG_MMG"]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[10, "#GRENADIER_MAG"]]]] call keko_loadout_backpack_inventory;
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
["put", ["RAT", [[1,"#RAT_MAG"]]]] call keko_loadout_backpack_inventory;



["put", ["DEFAULT", ["vme_pla_qbz95_1"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["vme_pla_qbz95_1GL"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["vme_pla_qbu88"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["vme_pla_qjb95_1"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["MMG_01_tan_F"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_primary_items;
["put", ["MAR", ["VME_QBU88_Scope"]]] call keko_loadout_primary_items;
["put", ["LMG", []]] call keko_loadout_primary_items;
["put", ["MMG", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["hgun_Rook40_F"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["#RAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["#SAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["#SAA_LAUNCHER"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


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
["put", ["UAV", ["I_UavTerminal"]]] call keko_loadout_linkable_items;