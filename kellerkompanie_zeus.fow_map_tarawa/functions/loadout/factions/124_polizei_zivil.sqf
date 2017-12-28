// Polizei Zivil
keko_loadout_list = [
	["---- Führung ----", ""], 
	["Einsatzleiter", "LEA"], 
	["Stellvertreter", "SER"],
	["Arzt", "DOC"], 
	["Gruppenführer", "SQL"], 
	["Teamführer", "FTL"], 
	["Sanitäter", "MED"], 
	["---- Plebs ----", ""], 
	["Schütze", "RIF"], 
	["Grenadier", "GRE"], 
	["Leichtes MG", "LMG"],
	["---- Support ----", ""], 
	["Zielfernrohrschütze", "MAR"], 
	["Sprengmittelräumer", "EOD"], 
	["Ingenieur", "ENG"], 
	["Pilot", "PIL"], 
	["UAV Operator", "UAV"] 
];


["put", ["#PRIMARY_MAG", "hlc_30rnd_556x45_SPR_G36"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "hlc_30rnd_556x45_SPR_G36"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "hlc_20rnd_762x51_b_G3"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "hlc_20rnd_762x51_b_G3"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "rhs_mag_30Rnd_556x45_Mk262_Stanag"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "UK3CB_BAF_9_17Rnd"]] call keko_loadout_keywords;
["put", ["#GRENADE", "ACE_M84"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_black"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "TRYK_B_Medbag_BK"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_AssaultPack_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "TRYK_B_Carryall_blk"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["TRYK_U_B_BLK_OD_Rollup_CombatUniform","TRYK_U_B_BLK_tan_Rollup_CombatUniform","TRYK_U_B_wh_OD_Rollup_CombatUniform","TRYK_U_B_wh_tan_Rollup_CombatUniform","TRYK_shirts_DENIM_BK","TRYK_shirts_DENIM_BL","TRYK_shirts_DENIM_BWH","TRYK_shirts_DENIM_od","TRYK_shirts_DENIM_R","TRYK_shirts_DENIM_RED2","TRYK_shirts_DENIM_WH","TRYK_shirts_DENIM_WHB","TRYK_shirts_DENIM_ylb","TRYK_shirts_DENIM_od_Sleeve","TRYK_shirts_DENIM_ylb_Sleeve","TRYK_shirts_PAD_BK","TRYK_shirts_BLK_PAD_BK","TRYK_shirts_OD_PAD_BK","TRYK_shirts_TAN_PAD_BK","TRYK_shirts_PAD_BL","TRYK_shirts_BLK_PAD_BL","TRYK_shirts_OD_PAD_BL","TRYK_U_pad_hood_Blod","TRYK_U_pad_hood_odBK","TRYK_U_pad_hood_Cl","TRYK_U_denim_hood_blk","TRYK_U_B_RED_T_BG_BR","TRYK_U_B_Denim_T_BK"]]] call keko_loadout_uniform;
["put", ["LEA", ["TRYK_U_B_wh_blk_Rollup_CombatUniform"]]] call keko_loadout_uniform;
["put", ["PIL", ["BWA3_Uniform_Helipilot"]]] call keko_loadout_uniform;


["put", ["DEFAULT", ["seko_weste","sek_weste","sekp_weste"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;




["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;



["put", ["DEFAULT", keko_loadout_uniform_inventory_default]] call keko_loadout_uniform_inventory;



["put", ["DEFAULT", [[4, "#PRIMARY_MAG"],[4, "#PRIMARY_MAG_TRACER"],[1, "#SMOKE_WHITE"],[3,"#GRENADE"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;

["put", ["MED", keko_loadout_vest_inventory_medic_default]] call keko_loadout_vest_inventory;
["put", ["DOC", keko_loadout_vest_inventory_medic_default]] call keko_loadout_vest_inventory;

["put", ["MAR", [[4, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[4, _primary_mag_marksman],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[4, "#PRIMARY_MAG_LMG"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;




["put", ["DEFAULT", ["H_Watchcap_blk","H_Watchcap_cbr","H_Watchcap_camo","H_Watchcap_khk","H_Cap_blk","H_Cap_blu","H_Cap_oli","H_Cap_oli_hs","H_Cap_police","H_Cap_red","TRYK_H_headsetcap_Glasses","TRYK_H_headsetcap_blk_Glasses","TRYK_H_headsetcap_od_Glasses","TRYK_H_headsetcap_blk","TRYK_H_headsetcap_od","TRYK_H_headsetcap","TRYK_R_CAP_BLK","TRYK_R_CAP_TAN","TRYK_r_cap_blk_Glasses","TRYK_r_cap_od_Glasses","TRYK_UA_CAP","TRYK_UA_CAP_GR","TRYK_UA_CAP_U","TRYK_UA_CAP2R","TRYK_UA_CAP_GR2R","TRYK_UA_CAP_U2R","TRYK_UA_CAP2","TRYK_UA_CAP_U2"]]] call keko_loadout_helmet;
["put", ["LEA", ["TRYK_H_wig"]]] call keko_loadout_helmet;




["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SER", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SQL", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["MED", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["DOC", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["LMG", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["GRE", ["TAC_BP_HSG_GLP_B"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["B_UAV_01_backpack_F"]]] call keko_loadout_backpack;





["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[8, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[6, "ACE_M84"],[4,"HandGrenade"]]]] call keko_loadout_backpack_inventory;
["put", ["SER", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", keko_loadout_backpack_inventory_med]] call keko_loadout_backpack_inventory;
["put", ["DOC", keko_loadout_backpack_inventory_doc]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[6,"DemoCharge_Remote_Mag"],[2,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["hlc_rifle_G36KV"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["hlc_rifle_psg1"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["rhs_weap_m27iar_grip"]]] call keko_loadout_primary_weapon;




["put", ["DEFAULT", ["rhsusf_acc_rotex5_grey","BWA3_acc_VarioRay_irlaser","UK3CB_BAF_Eotech"]]] call keko_loadout_primary_items;
["put", ["MAR", ["rhsusf_acc_harris_bipod"]]] call keko_loadout_primary_items;
["put", ["LMG", ["rhsusf_acc_anpeq15_bk","UK3CB_BAF_Eotech"]]] call keko_loadout_primary_items;



["put", ["DEFAULT", ["UK3CB_BAF_L131A1"]]] call keko_loadout_secondary_weapon;



["put", ["DEFAULT", ["UK3CB_BAF_Flashlight_L131A1"]]] call keko_loadout_secondary_items;



["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["SQL", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["B_UavTerminal"]]] call keko_loadout_linkable_items;