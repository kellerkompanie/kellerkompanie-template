// Japan Self-Defense Forces
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


["put", ["DEFAULT", ["TRYK_U_B_JSDF_CombatUniform","TRYK_U_B_JSDF_CombatUniformTshirt"]]] call keko_loadout_uniform;
	


["put", ["DEFAULT", ["TRYK_V_PlateCarrier_JSDF"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;


_primary_mag = "hlc_30rnd_556x45_EPR_HK33";
_primary_mag_tracer = "hlc_30rnd_556x45_t_HK33";
_primary_mag_marksman = "hlc_20rnd_762x51_b_G3";
_primary_mag_lmg = "rhs_200rnd_556x45_M_SAW";
_primary_mag_mmg = "hlc_100Rnd_762x51_T_M60E4";
["put", ["DEFAULT", [_primary_mag,_primary_mag_tracer]]] call keko_loadout_primary_mag;
["put", ["MAR", [_primary_mag_marksman]]] call keko_loadout_primary_mag;
["put", ["LMG", [_primary_mag_lmg]]] call keko_loadout_primary_mag;
["put", ["MMG", [_primary_mag_mmg]]] call keko_loadout_primary_mag;



_secondary_mag = "16Rnd_9x21_Mag";
["put", ["DEFAULT", [_secondary_mag]]] call keko_loadout_secondary_mag;


_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
_at_spec_mag = "Titan_AT";
_aa_spec_mag = "Titan_AA";
["put", ["GRE", [_primary_mag_grenadier]]] call keko_loadout_tertiary_mag;
["put", ["SAT", [_at_spec_mag]]] call keko_loadout_tertiary_mag;
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

["put", ["MAR", [[5, _primary_mag_marksman],[1, _smoke_white],[2, _grenade],[5, "ACE_20Rnd_762x51_Mag_Tracer"]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[4, _primary_mag_lmg],[1, _smoke_white],[2, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, _primary_mag_mmg],[2, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, _primary_mag],[2, _primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, _secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["TRYK_H_Helmet_JSDF"]]] call keko_loadout_helmet;
["put", ["LEA", ["TRYK_H_Booniehat_JSDF"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_PilotHelmetHeli_B"]]] call keko_loadout_helmet;


_lr_radio = "TFAR_rt1523g_green";
_backpack_med = "TRYK_B_Kitbag_Base_JSDF";
_backpack_autorifle = "TRYK_B_AssaultPack_Type2camo";
_backpack_engineer = "TRYK_B_Carryall_JSDF";
_backpack_specialist = "B_FieldPack_oli";
_backpack_rat = "TRYK_B_AssaultPack_Type2camo";
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
["put", ["GRE", ["TAC_BP_HSG_GLP_OD"]]] call keko_loadout_backpack;
["put", ["ENG", [_backpack_engineer]]] call keko_loadout_backpack;
["put", ["EOD", [_backpack_engineer]]] call keko_loadout_backpack;
["put", ["SAT", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["AAT", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["SAA", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["AAA", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["I_UAV_01_backpack_F"]]] call keko_loadout_backpack;
["put", ["RAT", [_backpack_rat]]] call keko_loadout_backpack;


["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, _primary_mag_mmg]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[10, _primary_mag_grenadier]]]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[1, _at_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["AAT", [[2, _at_spec_mag]]]] call keko_loadout_backpack_inventory;
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




["put", ["DEFAULT", ["hlc_rifle_hk33a2RIS"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["hlc_rifle_hk33a2RIS_GL"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["hlc_rifle_g3ka4"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["rhs_weap_m249_pip_S"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["hlc_lmg_m60"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", ["rhsusf_acc_anpeq15side_bk","UK3CB_BAF_TA31F"]]] call keko_loadout_primary_items;
["put", ["MAR", ["rhsusf_acc_anpeq15side_bk","UK3CB_BAF_TA648","rhsusf_acc_harris_bipod"]]] call keko_loadout_primary_items;
["put", ["LMG", []]] call keko_loadout_primary_items;
["put", ["MMG", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["hgun_Rook40_F"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["BWA3_Pzf3"]]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["launch_I_Titan_short_F"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["launch_I_Titan_F"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;
["put", ["RAT", ["BWA3_Pzf3_IT"]]] call keko_loadout_tertiary_mag;


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