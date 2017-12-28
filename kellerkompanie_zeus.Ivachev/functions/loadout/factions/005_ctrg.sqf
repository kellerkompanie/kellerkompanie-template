// CTRG
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
	["Sniper", "SNI"], //22
	["Spotter", "SPO"], //23
	["Explosive Specialist", "EOD"], //24
	["Engineer", "ENG"], //25
	["Pilot", "PIL"], //26
	["Forward Air Controller", "JTC"], //27
	["UAV Operator", "UAV"] //28
];


["put", ["#PRIMARY_MAG", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "30Rnd_65x39_caseless_mag_Tracer"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "100Rnd_65x39_caseless_mag_Tracer"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "130Rnd_338_Mag"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "16Rnd_9x21_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "1Rnd_HE_Grenade_shell"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "Titan_AT"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "Titan_AA"]] call keko_loadout_keywords;
["put", ["#GRENADE", "HandGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_black"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_Kitbag_rgr"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_FieldPack_khk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_Carryall_khk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_FieldPack_cbr"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "launch_NLAW_F"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "launch_B_Titan_short_F"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "launch_B_Titan_F"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_B_CTRG_1"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_B_HeliPilotCoveralls"]]] call keko_loadout_uniform;	
["put", ["SNI", ["U_B_FullGhillie_sard"]]] call keko_loadout_uniform;
["put", ["SPO", ["U_B_FullGhillie_sard"]]] call keko_loadout_uniform;	


["put", ["DEFAULT", ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;
["put", ["SNI", ["V_PlateCarrierH_CTRG"]]] call keko_loadout_vest;
["put", ["SPO", ["V_PlateCarrierH_CTRG"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;
["put", ["MMG", ["#PRIMARY_MAG_MMG"]]] call keko_loadout_primary_mag;

["put", ["SNI", ["ACE_7Rnd_408_305gr_Mag"]]] call keko_loadout_primary_mag;
["put", ["SPO", ["ACE_30Rnd_65x47_Scenar_mag"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;
["put", ["SNI", ["11Rnd_45ACP_Mag"]]] call keko_loadout_secondary_mag;
["put", ["SPO", ["11Rnd_45ACP_Mag"]]] call keko_loadout_secondary_mag;


["put", ["GRE", ["#GRENADIER_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAA", ["#AA_MAG"]]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", keko_loadout_uniform_inventory_default]] call keko_loadout_uniform_inventory;
["put", ["SNI", [[1,"ACE_ATragMX"],[10,"ACE_quikclot"],[1,"ACE_Flashlight_MX991"],[1,"ACE_IR_Strobe_Item"],[1,"ACE_Kestrel4500"],[1,"ACE_MapTools"],[1,"ACE_microDAGR"],[2,"ACE_morphine"],[3,"ACE_tourniquet"],[1,"ACE_surgicalKit"],[1,"ACE_RangeCard"],[2,"ACE_epinephrine"],[1,"ACE_salineIV"],[8,"ACE_fieldDressing"]]]] call keko_loadout_uniform_inventory;
["put", ["SPO", [[1,"ACE_ATragMX"],[10,"ACE_quikclot"],[1,"ACE_Flashlight_MX991"],[1,"ACE_IR_Strobe_Item"],[1,"ACE_Kestrel4500"],[1,"ACE_MapTools"],[1,"ACE_microDAGR"],[2,"ACE_morphine"],[3,"ACE_tourniquet"],[1,"ACE_surgicalKit"],[1,"ACE_RangeCard"],[2,"ACE_epinephrine"],[1,"ACE_salineIV"],[8,"ACE_fieldDressing"]]]] call keko_loadout_uniform_inventory;








["put", ["DEFAULT", keko_loadout_vest_inventory_default]] call keko_loadout_vest_inventory;
["put", ["JTC", [[2, "#PRIMARY_MAG"],[2,"#PRIMARY_MAG_TRACER"],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]]]] call keko_loadout_vest_inventory;

["put", ["MED", keko_loadout_vest_inventory_medic_default]] call keko_loadout_vest_inventory;
["put", ["DOC", keko_loadout_vest_inventory_medic_default]] call keko_loadout_vest_inventory;

["put", ["MAR", [[5, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[5, "#PRIMARY_MAG_MARKSMAN_TRACER"]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[4, "#PRIMARY_MAG_LMG"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, "#PRIMARY_MAG_MMG"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;
["put", ["SNI", [[1,"SmokeShell"],[1,"SmokeShellGreen"],[8,"ACE_7Rnd_408_305gr_Mag"],[2,"11Rnd_45ACP_Mag"]]]] call keko_loadout_vest_inventory;
["put", ["SPO", [[1,"SmokeShell"],[1,"SmokeShellGreen"],[2,"11Rnd_45ACP_Mag"],[10,"ACE_30Rnd_65x47_Scenar_mag"],[1,"HandGrenade"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["H_HelmetB_light_black","H_HelmetSpecB_blk","H_HelmetB_black"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_Booniehat_khk_hs"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_PilotHelmetHeli_B"]]] call keko_loadout_helmet;
["put", ["SNI", ["H_HelmetSpecB_blk"]]] call keko_loadout_helmet;
["put", ["SPO", ["H_HelmetSpecB_blk"]]] call keko_loadout_helmet;


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
["put", ["GRE", ["B_AssaultPack_rgr"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["SAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["SAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["SNI", ["B_AssaultPack_rgr"]]] call keko_loadout_backpack;
["put", ["SPO", ["B_Carryall_khk"]]] call keko_loadout_backpack;
["put", ["UAV", ["B_UAV_01_backpack_F"]]] call keko_loadout_backpack;


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
["put", ["LEA", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["SER", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["JTC", [[4,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", keko_loadout_backpack_inventory_med]] call keko_loadout_backpack_inventory;
["put", ["DOC", keko_loadout_backpack_inventory_doc]] call keko_loadout_backpack_inventory;
["put", ["ENG", keko_loadout_backpack_inventory_eng]] call keko_loadout_backpack_inventory;
["put", ["EOD", keko_loadout_backpack_inventory_eod]] call keko_loadout_backpack_inventory;
["put", ["SNI", [[2,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;
["put", ["SPO", [[20,"ACE_elasticBandage"],[20,"ACE_quikclot"],[20,"ACE_fieldDressing"],[4,"ACE_CableTie"],[2,"ACE_DefusalKit"],[1,"ACE_EntrenchingTool"],[10,"ACE_epinephrine"],[5,"ACE_morphine"],[6,"ACE_salineIV"],[1,"ACE_SpottingScope"],[1,"ACE_Tripod"],[1,"ACE_wirecutter"],[2,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["arifle_MX_Black_F"]]] call keko_loadout_primary_weapon;
["put", ["LEA", ["arifle_MXC_Black_F"]]] call keko_loadout_primary_weapon;
["put", ["MED", ["arifle_MXC_Black_F"]]] call keko_loadout_primary_weapon;
["put", ["DOC", ["arifle_MXC_Black_F"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["arifle_MX_GL_Black_F"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["arifle_MXM_Black_F"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["arifle_MX_SW_Black_F"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["MMG_02_black_F"]]] call keko_loadout_primary_weapon;
["put", ["SNI", ["srifle_LRR_F"]]] call keko_loadout_primary_weapon;
["put", ["SPO", ["arifle_MXM_Black_F"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", ["acc_pointer_IR","optic_Hamr"]]] call keko_loadout_primary_items;
["put", ["LEA", ["acc_pointer_IR","optic_ACO_grn"]]] call keko_loadout_primary_items;
["put", ["DOC", ["acc_pointer_IR","optic_ACO_grn"]]] call keko_loadout_primary_items;
["put", ["MED", ["acc_pointer_IR","optic_ACO_grn"]]] call keko_loadout_primary_items;
["put", ["MAR", ["acc_pointer_IR","optic_SOS","bipod_01_F_blk"]]] call keko_loadout_primary_items;
["put", ["LMG", ["acc_pointer_IR","bipod_01_F_blk"]]] call keko_loadout_primary_items;
["put", ["MMG", ["acc_pointer_IR","bipod_01_F_blk"]]] call keko_loadout_primary_items;
["put", ["SNI", ["optic_LRPS"]]] call keko_loadout_primary_items;
["put", ["SPO", ["muzzle_snds_H","optic_Hamr","bipod_01_F_blk"]]] call keko_loadout_primary_items;






["put", ["DEFAULT", ["hgun_P07_F"]]] call keko_loadout_secondary_weapon;
["put", ["SNI", ["hgun_Pistol_heavy_01_F"]]] call keko_loadout_secondary_weapon;
["put", ["SPO", ["hgun_Pistol_heavy_01_F"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;
["put", ["SNI", ["muzzle_snds_acp","acc_flashlight_pistol","optic_MRD"]]] call keko_loadout_secondary_items;
["put", ["SPO", ["muzzle_snds_acp","acc_flashlight_pistol","optic_MRD"]]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["#RAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["#SAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["#SAA_LAUNCHER"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["SQL", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;
["put", ["LAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["MAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["AAT", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["AAA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["JTC", ["Laserdesignator"]]] call keko_loadout_optics;
["put", ["SNI", ["Laserdesignator"]]] call keko_loadout_optics;
["put", ["SPO", ["Laserdesignator"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["B_UavTerminal"]]] call keko_loadout_linkable_items;