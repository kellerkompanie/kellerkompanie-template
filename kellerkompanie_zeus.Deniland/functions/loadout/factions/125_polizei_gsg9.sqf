// GSG9
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
	["Missile Specialist Anti-Air", "SAA"], 
	["Missile Specialist Anti-Air Asst.", "AAA"], 
	["---- Support ----", ""], 
	["Marksman", "MAR"], 
	["Explosive Specialist", "EOD"], 
	["Engineer", "ENG"], 
	["Pilot", "PIL"], 
	["Forward Air Controller", "JTC"], 
	["UAV Operator", "UAV"] 
];


["put", ["#PRIMARY_MAG", "hlc_30rnd_556x45_SPR_G36"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "hlc_30rnd_556x45_SPR_G36"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "hlc_20rnd_762x51_b_G3"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "hlc_20rnd_762x51_b_G3"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "rhs_mag_30Rnd_556x45_Mk262_Stanag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "rhs_200rnd_556x45_M_SAW"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "UK3CB_BAF_9_17Rnd"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "1Rnd_HE_Grenade_shell"]] call keko_loadout_keywords;
["put", ["#RAT_MAG", "BWA3_Pzf3_IT"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "BWA3_Pzf3_IT"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "BWA3_Fliegerfaust_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADE", "ACE_M84"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_black"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "TRYK_B_Medbag_BK"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_AssaultPack_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "TRYK_B_Carryall_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_FieldPack_blk"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "BWA3_Pzf3"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "BWA3_Pzf3"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "BWA3_Fliegerfaust"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["TRYK_U_B_OD_BLK","TRYK_U_B_OD_BLK_2","TRYK_U_B_ODTAN","TRYK_U_B_ODTAN_Tshirt","TRYK_U_B_BLK_TAN_1","TRYK_U_B_BLK_TAN_2"]]] call keko_loadout_uniform;


["put", ["DEFAULT", ["gsg9_weste"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;
["put", ["MMG", ["#PRIMARY_MAG_MMG"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;



["put", ["GRE", ["#GRENADIER_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["RAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAA", ["#AA_MAG"]]] call keko_loadout_tertiary_mag;




_uniform_inventory = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_MapTools"],[1, "ACE_Flashlight_XL50"],[1, "ACE_IR_Strobe_Item"]];
_uniform_inventory pushBack [1, "#SECONDARY_MAG"];
_uniform_inventory pushBack [1, "#SMOKE_WHITE"];
_uniform_inventory pushBack [1, "#SMOKE_GREEN"];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;





["put", ["DEFAULT", [[4, "#PRIMARY_MAG"],[4, "#PRIMARY_MAG_TRACER"],[1, "#SMOKE_WHITE"],[3,_grenade],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;
["put", ["JTC", [[2, "#PRIMARY_MAG"],[2,"#PRIMARY_MAG_TRACER"],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;

_vest_inventory_medic = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_medic pushBack [3, "#PRIMARY_MAG"];
_vest_inventory_medic pushBack [3, "#PRIMARY_MAG_TRACER"];
_vest_inventory_medic pushBack [2, "#SMOKE_WHITE"];
_vest_inventory_medic pushBack [2,"ACE_CableTie"];
["put", ["MED", _vest_inventory_medic]] call keko_loadout_vest_inventory;

_vest_inventory_doctor = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_doctor pushBack [3, "#PRIMARY_MAG"];
_vest_inventory_doctor pushBack [3, "#PRIMARY_MAG_TRACER"];
_vest_inventory_doctor pushBack [2, "#SMOKE_WHITE"];
_vest_inventory_doctor pushBack [2,"ACE_CableTie"];
["put", ["DOC", _vest_inventory_doctor]] call keko_loadout_vest_inventory;

["put", ["MAR", [[4, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[4, "#PRIMARY_MAG_MARKSMAN"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[4, "#PRIMARY_MAG_LMG"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, "#PRIMARY_MAG_MMG"],[2, "#GRENADE"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[1,"ACE_HuntIR_monitor"],[6,"ACE_HuntIR_M203"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"],[2,"ACE_CableTie"]]]] call keko_loadout_vest_inventory;




["put", ["DEFAULT", ["BWA3_OpsCore_Fleck","BWA3_OpsCore_Schwarz_Camera","BWA3_OpsCore_Schwarz","BWA3_OpsCore_Fleck_Camera"]]] call keko_loadout_helmet;
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
["put", ["GRE", ["TAC_BP_HSG_GLP_B"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["SAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["AAA", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["B_UAV_01_backpack_F"]]] call keko_loadout_backpack;
["put", ["RAT", ["#BACKPACK_SPECIALIST"]]] call keko_loadout_backpack;





["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, "#PRIMARY_MAG_MMG"]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[6, "ACE_M84"],[4,"HandGrenade"]]]] call keko_loadout_backpack_inventory;
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
["put", ["RAT", [[1,"BWA3_Pzf3_IT"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["hlc_rifle_G36KV"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["hlc_rifle_G36KV"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["hlc_rifle_psg1"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["rhs_weap_m27iar_grip"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["rhs_weap_m249_pip_S_vfg"]]] call keko_loadout_primary_weapon;




["put", ["DEFAULT", ["rhsusf_acc_rotex5_grey","BWA3_acc_VarioRay_irlaser","UK3CB_BAF_Eotech"]]] call keko_loadout_primary_items;
["put", ["MAR", ["rhsusf_acc_harris_bipod"]]] call keko_loadout_primary_items;
["put", ["LMG", ["rhsusf_acc_anpeq15_bk","UK3CB_BAF_Eotech"]]] call keko_loadout_primary_items;
["put", ["MMG", ["rhsusf_acc_anpeq15side_bk","UK3CB_BAF_Eotech"]]] call keko_loadout_primary_items;



["put", ["DEFAULT", ["UK3CB_BAF_L131A1"]]] call keko_loadout_secondary_weapon;



["put", ["DEFAULT", ["UK3CB_BAF_Flashlight_L131A1"]]] call keko_loadout_secondary_items;



["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["#RAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["#SAA_LAUNCHER"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["SQL", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;
["put", ["LAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["MAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["AAA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["JTC", ["Laserdesignator"]]] call keko_loadout_optics;


["put", ["DEFAULT", ["PBW_Balaclava_schwarz","PBW_Balaclava_schwarzR","G_Bandanna_shades","G_Bandanna_sport","TRYK_kio_balaclava_BLK","TRYK_kio_balaclava_BLK_ear","TRYK_kio_balaclava_ESS"]]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["B_UavTerminal"]]] call keko_loadout_linkable_items;