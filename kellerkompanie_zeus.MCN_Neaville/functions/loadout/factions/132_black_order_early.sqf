// Black Order - Early Years
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


["put", ["#PRIMARY_MAG", "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "rhsusf_20Rnd_762x51_m993_Mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "rhsusf_20Rnd_762x51_m993_Mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "rhs_200rnd_556x45_M_SAW"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "rhsusf_100Rnd_762x51_m62_tracer"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "rhsusf_mag_15Rnd_9x19_FMJ"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "rhs_mag_M441_HE"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "rhs_fgm148_magazine_AT"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "rhs_fim92_mag"]] call keko_loadout_keywords;
["put", ["#GRENADE", "HandGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_black"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_Kitbag_cbr"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_FieldPack_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_Carryall_cbr"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_Carryall_cbr"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "rhs_weap_M136"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "rhs_weap_fgm148"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "rhs_weap_fim92"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["U_B_CombatUniform_mcam_tshirt","U_I_G_resistanceLeader_F","U_BG_Guerrilla_6_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_I_G_Story_Protagonist_F","TRYK_B_TRYK_3C_T","TRYK_DMARPAT_T","TRYK_U_B_BLOD_T"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_B_CombatUniform_mcam_tshirt"]]] call keko_loadout_uniform;

	


["put", ["DEFAULT", ["TRYK_V_ArmorVest_Brown2","TRYK_V_ArmorVest_cbr2","TRYK_V_ArmorVest_khk2","TRYK_V_ArmorVest_coyo2","TRYK_V_ArmorVest_Delta2","TRYK_V_ArmorVest_green2","TRYK_V_ArmorVest_Ranger2","TRYK_V_ArmorVest_tan2","TRYK_V_ArmorVest_Brown","TRYK_V_ArmorVest_CBR","TRYK_V_ArmorVest_coyo","TRYK_V_ArmorVest_Delta","TRYK_V_ArmorVest_green","TRYK_V_ArmorVest_khk","TRYK_V_ArmorVest_Ranger"]]] call keko_loadout_vest;
["put", ["GRE", ["TRYK_V_PlateCarrier_coyo","TRYK_V_PlateCarrier_wood","TRYK_V_PlateCarrier_coyo_L","TRYK_V_PlateCarrier_blk","TRYK_V_PlateCarrier_blk_L","TRYK_V_PlateCarrier_wood_L"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;




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



["put", ["DEFAULT", ["H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_camo","H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_oli","H_Cap_red","H_Cap_usblack","H_Cap_tan","H_Cap_tan_specops_US"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_Bandanna_khk_hs","H_Booniehat_khk_hs","H_Cap_oli_hs"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_PilotHelmetHeli_B"]]] call keko_loadout_helmet;


_backpack_med = ["B_Kitbag_cbr","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg","TRYK_B_Kitbag_blk"];
_backpack_autorifle = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli"];
_backpack_engineer = ["B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_oli"];
_backpack_specialist = _backpack_engineer;
["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SER", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SQL", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["JTC", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["MED", _backpack_med]] call keko_loadout_backpack;
["put", ["DOC", _backpack_med]] call keko_loadout_backpack;
["put", ["LMG", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["LAS", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["MMG", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["MAS", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["GRE", ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_sgg"]]] call keko_loadout_backpack;
["put", ["ENG", _backpack_engineer]] call keko_loadout_backpack;
["put", ["EOD", _backpack_engineer]] call keko_loadout_backpack;
["put", ["SAT", _backpack_specialist]] call keko_loadout_backpack;
["put", ["AAT", _backpack_specialist]] call keko_loadout_backpack;
["put", ["SAA", _backpack_specialist]] call keko_loadout_backpack;
["put", ["AAA", _backpack_specialist]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
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




["put", ["DEFAULT", ["rhs_weap_hk416d10","rhs_weap_hk416d145","rhs_weap_m16a4","rhs_weap_m16a4_carryhandle","rhs_weap_m27iar","rhs_weap_m27iar_grip","rhs_weap_m4","rhs_weap_m4_carryhandle","rhs_weap_m4a1_carryhandle","rhs_weap_m4a1","rhs_weap_m4a1_d"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["rhs_weap_hk416d10_m320","rhs_weap_hk416d145_m320","rhs_weap_m16a4_carryhandle_M203","rhs_weap_m4_m203","rhs_weap_m4_m203S","rhs_weap_m4_m320",
"rhs_weap_m4a1_carryhandle_m203","rhs_weap_m4a1_carryhandle_m203S","rhs_weap_m4a1_m203s_d"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["rhs_weap_m14ebrri"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["rhs_weap_m249"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["rhs_weap_m240B"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", ["ACE_acc_pointer_green"]]] call keko_loadout_primary_items;
["put", ["MAR", ["ACE_acc_pointer_green","rhsusf_acc_ACOG3","rhsusf_acc_harris_bipod"]]] call keko_loadout_primary_items;
["put", ["LMG", []]] call keko_loadout_primary_items;
["put", ["MMG", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["rhsusf_weap_m9"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


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


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["B_UavTerminal"]]] call keko_loadout_linkable_items;

//keko_loadout_insignia = "TERROR_Insignia";