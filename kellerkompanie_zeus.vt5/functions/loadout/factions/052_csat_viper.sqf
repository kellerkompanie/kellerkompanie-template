//CSAT Viper
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
	["---- Heavy Weapons ----", ""], //13
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


["put", ["#PRIMARY_MAG", "30Rnd_65x39_caseless_green"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "30Rnd_65x39_caseless_green_mag_Tracer"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "20Rnd_650x39_Cased_Mag_F"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "20Rnd_650x39_Cased_Mag_F"]] call keko_loadout_keywords;
["put", ["#PRIMARY_SPECIAL", "10Rnd_50BW_Mag_F"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "150Rnd_556x45_Drum_Mag_F"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "130Rnd_338_Mag"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "16Rnd_9x21_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "1Rnd_HE_Grenade_shell"]] call keko_loadout_keywords;
["put", ["#RAT_MAG", "RPG32_F"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "Titan_AT"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "Titan_AA"]] call keko_loadout_keywords;
["put", ["#GRENADE", "HandGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_green"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_ViperHarness_ghex_F"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_ViperHarness_ghex_F"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_ViperHarness_ghex_F"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_ViperHarness_ghex_F"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "launch_RPG32_ghex_F"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "launch_O_Titan_short_ghex_F"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "launch_O_Titan_ghex_F"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["U_O_V_Soldier_Viper_F"]]] call keko_loadout_uniform;



["put", ["DEFAULT", ["V_HarnessO_ghex_F"]]] call keko_loadout_vest;


["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;


["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;



["put", ["SAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAA", ["#AA_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["RAT", ["#RAT_MAG"]]] call keko_loadout_tertiary_mag;



["put", ["DEFAULT", [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_MapTools"],[1, "ACE_Flashlight_XL50"],[1, "ACE_IR_Strobe_Item"],[1, "#SECONDARY_MAG"],[1, "#SMOKE_WHITE"],[1, "#SMOKE_GREEN"]]]] call keko_loadout_uniform_inventory;



["put", ["DEFAULT", [[4, "#PRIMARY_MAG"],[4, "#PRIMARY_MAG_TRACER"],[2, "#PRIMARY_SPECIAL"],[1, "#SMOKE_WHITE"],[3,"#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["JTC", [[2, "#PRIMARY_MAG"],[2,"#PRIMARY_MAG_TRACER"],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]]]] call keko_loadout_vest_inventory;

["put", ["MED", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[3, "#PRIMARY_MAG"],[3, "#PRIMARY_MAG_TRACER"],[2, "#SMOKE_WHITE"],[1, "#PRIMARY_SPECIAL"]]]] call keko_loadout_vest_inventory;
["put", ["DOC", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[3, "#PRIMARY_MAG"],[3, "#PRIMARY_MAG_TRACER"],[2, "#SMOKE_WHITE"],[1, "#PRIMARY_SPECIAL"]]]] call keko_loadout_vest_inventory;

["put", ["MAR", [[4, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[4, "#PRIMARY_MAG_MARKSMAN"]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["H_HelmetO_ViperSP_ghex_F"]]] call keko_loadout_helmet;



["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SER", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SQL", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["JTC", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["MED", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["DOC", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["SAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["SAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["O_UAV_01_backpack_F"]]] call keko_loadout_backpack;
["put", ["RAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;


["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[1, "#AT_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["AAT", [[2, "#AT_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["SAA", [[1, "#AA_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["AAA", [[2, "#AA_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["SER", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["JTC", [[4,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"],[1,"adv_aceCPR_AED"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[6,"DemoCharge_Remote_Mag"],[2,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]]]] call keko_loadout_backpack_inventory;
["put", ["RAT", [[1, "#RAT_MAG"]]]] call keko_loadout_backpack_inventory;



["put", ["DEFAULT", ["arifle_ARX_ghex_F"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["srifle_DMR_07_ghex_F"]]] call keko_loadout_primary_weapon;



["put", ["DEFAULT", ["muzzle_snds_65_TI_ghex_F","acc_pointer_IR","optic_Arco_ghex_F"]]] call keko_loadout_primary_items;
["put", ["MAR", ["muzzle_snds_65_TI_ghex_F","acc_pointer_IR","optic_DMS_ghex_F","bipod_02_F_blk"]]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["hgun_Rook40_F"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", ["muzzle_snds_L"]]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["#RAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["#SAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["#SAA_LAUNCHER"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", ["Laserdesignator_02_ghex_F"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["O_UavTerminal"]]] call keko_loadout_linkable_items;