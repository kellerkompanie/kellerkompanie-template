// BW KSK Tropen
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


["put", ["DEFAULT", ["BWA3_Uniform2_Tropen","BWA3_Uniform_Tropen","BWA3_Uniform_idz_Tropen","BWA3_Uniform3_idz_Tropen"]]] call keko_loadout_uniform;
["put", ["PIL", ["BWA3_Uniform_Helipilot"]]] call keko_loadout_uniform;


["put", ["DEFAULT", ["BWA3_Vest_JPC_Radioman_Tropen","BWA3_Vest_JPC_Rifleman_Tropen","BWA3_Vest_JPC_Leader_Tropen"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;


_primary_mag = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_primary_mag_tracer = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
_primary_mag_marksman = "UK3CB_BAF_762_L42A1_20Rnd";
_primary_mag_lmg = "BWA3_200Rnd_556x45_Tracer";
_primary_mag_mmg = "BWA3_120Rnd_762x51_Tracer";
["put", ["DEFAULT", [_primary_mag,_primary_mag_tracer]]] call keko_loadout_primary_mag;
["put", ["MAR", [_primary_mag_marksman]]] call keko_loadout_primary_mag;
["put", ["LMG", [_primary_mag_lmg]]] call keko_loadout_primary_mag;
["put", ["MMG", [_primary_mag_mmg]]] call keko_loadout_primary_mag;



_secondary_mag = "BWA3_15Rnd_9x19_P8";
["put", ["DEFAULT", [_secondary_mag]]] call keko_loadout_secondary_mag;


_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
_at_spec_mag = "BWA3_Pzf3_IT";
_aa_spec_mag = "BWA3_Fliegerfaust_Mag";
["put", ["GRE", [_primary_mag_grenadier]]] call keko_loadout_tertiary_mag;
["put", ["RAT", [_at_spec_mag]]] call keko_loadout_tertiary_mag;
["put", ["SAA", [_aa_spec_mag]]] call keko_loadout_tertiary_mag;


_grenade = "HandGrenade";
_smoke_white = "SmokeShell";
_smoke_green = "SmokeShellGreen";
["put", ["EXPLOSIVE", [_grenade]]] call keko_loadout_grenade;
["put", ["SMOKE_WHITE", [_smoke_white]]] call keko_loadout_grenade;
["put", ["SMOKE_GREEN", [_smoke_green]]] call keko_loadout_grenade;


_uniform_inventory = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_MapTools"],[1, "ACE_Flashlight_XL50"],[1, "ACE_IR_Strobe_Item"]];
_uniform_inventory pushBack [1, _secondary_mag];
_uniform_inventory pushBack [1, _smoke_white];
_uniform_inventory pushBack [1, _smoke_green];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;





["put", ["DEFAULT", [[5, _primary_mag],[5, _primary_mag_tracer],[1, _smoke_white],[3,_grenade]]]] call keko_loadout_vest_inventory;
["put", ["JTC", [[2, _primary_mag],[2,_primary_mag_tracer],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]]]] call keko_loadout_vest_inventory;

_vest_inventory_medic = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_medic pushBack [3, _primary_mag];
_vest_inventory_medic pushBack [3, _primary_mag_tracer];
_vest_inventory_medic pushBack [2, _smoke_white];
["put", ["MED", _vest_inventory_medic]] call keko_loadout_vest_inventory;

_vest_inventory_doctor = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_doctor pushBack [3, _primary_mag];
_vest_inventory_doctor pushBack [3, _primary_mag_tracer];
_vest_inventory_doctor pushBack [2, _smoke_white];
["put", ["DOC", _vest_inventory_doctor]] call keko_loadout_vest_inventory;

["put", ["MAR", [[5, _primary_mag_marksman],[1, _smoke_white],[2, _grenade],[5, _primary_mag_marksman]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[4, _primary_mag_lmg],[1, _smoke_white],[2, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, _primary_mag_mmg],[2, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, _primary_mag],[2, _primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, _secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;




["put", ["DEFAULT", ["BWA3_Booniehat_Tropen","BWA3_OpsCore_Tropen_Camera","BWA3_OpsCore_Tropen_Patch","BWA3_OpsCore_Tropen","PBW_Buschhut_tropen","H_ShemagOpen_tan","H_ShemagOpen_khk","LOP_H_Shemag_GRE","LOP_H_Shemag_TAN"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_PilotHelmetHeli_B"]]] call keko_loadout_helmet;
["put", ["LEA", ["PBW_muetze2_tropen"]]] call keko_loadout_helmet;




_lr_radio = "TFAR_rt1523g_big_bwmod_tropen";
_backpack_med = "BWA3_Kitbag_Tropen_Medic";
_backpack_autorifle = "BWA3_FieldPack_Tropen";
_backpack_engineer = "BWA3_Carryall_Tropen";
_backpack_specialist = "BWA3_FieldPack_Tropen";
["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", [_lr_radio]]] call keko_loadout_backpack;
["put", ["SER", [_lr_radio]]] call keko_loadout_backpack;
["put", ["SQL", [_lr_radio]]] call keko_loadout_backpack;
["put", ["JTC", [_lr_radio]]] call keko_loadout_backpack;
["put", ["MED", [_backpack_med]]] call keko_loadout_backpack;
["put", ["DOC", [_backpack_med]]] call keko_loadout_backpack;
["put", ["LMG", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["LAS", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["MMG", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["MAS", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["GRE", ["BWA3_AssaultPack_Tropen"]]] call keko_loadout_backpack;
["put", ["ENG", [_backpack_engineer]]] call keko_loadout_backpack;
["put", ["EOD", [_backpack_engineer]]] call keko_loadout_backpack;
["put", ["SAA", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["AAA", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["B_UAV_01_backpack_F"]]] call keko_loadout_backpack;
["put", ["RAT", [_backpack_specialist]]] call keko_loadout_backpack;





["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, _primary_mag_mmg]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[10, _primary_mag_grenadier]]]] call keko_loadout_backpack_inventory;
["put", ["SAA", [[1, _aa_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["AAA", [[2, _aa_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["SER", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["JTC", [[4,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"],[1,"adv_aceCPR_AED"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[6,"DemoCharge_Remote_Mag"],[2,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]]]] call keko_loadout_backpack_inventory;
["put", ["RAT", [[1,"BWA3_Pzf3_IT"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["rhs_weap_hk416d10_LMT_d"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["rhs_weap_hk416d10_m320"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["UK3CB_BAF_L129A1_FGrip"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["BWA3_MG4"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["BWA3_MG5_Tan"]]] call keko_loadout_primary_weapon;




["put", ["DEFAULT", ["rhsusf_acc_rotex5_tan","BWA3_optic_EOTech_tan_Mag_Off","BWA3_acc_VarioRay_irlaser"]]] call keko_loadout_primary_items;
["put", ["MAR", ["UK3CB_BAF_Silencer_L115A3","BWA3_acc_VarioRay_irlaser","UK3CB_BAF_TA648"]]] call keko_loadout_primary_items;
["put", ["LMG", ["BWA3_optic_EOTech_tan_Mag_Off","BWA3_acc_VarioRay_irlaser"]]] call keko_loadout_primary_items;
["put", ["MMG", ["BWA3_optic_EOTech_tan_Mag_Off","BWA3_acc_VarioRay_irlaser"]]] call keko_loadout_primary_items;



["put", ["DEFAULT", ["BWA3_P8"]]] call keko_loadout_secondary_weapon;



["put", ["DEFAULT", ["BWA3_acc_LLM01_irlaser"]]] call keko_loadout_secondary_items;



["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["BWA3_Pzf3"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["BWA3_Fliegerfaust"]]] call keko_loadout_tertiary_weapon;


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


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["B_UavTerminal"]]] call keko_loadout_linkable_items;