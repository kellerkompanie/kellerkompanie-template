//Guerilla
keko_loadout_list = [
	["---- Führung ----", ""], //0
	["Leader", "LEA"], //1
	["Doctor", "DOC"], //3
	["Group Leader", "SQL"], //4
	["Team Leader", "FTL"], //5
	["Medic", "MED"], //6
	["---- Plebs ----", ""], //7
	["Rifleman", "RIF"], //8
	["Grenadier", "GRE"], //10
	["Light Machine Gunner", "LMG"], //11
	["Light Machine Gunner Asst.", "LAS"], //12
	["---- Heavy Weapons ----", ""], //13
	["Medium Machine Gunner", "MMG"], //14
	["Medium Machine Gunner Asst.", "MAS"], //15
	["Missile Specialist Anti-Tank", "SAT"], //16
	["Missile Specialist Anti-Tank Asst.", "AAT"], //17
	["---- Support ----", ""], //20
	["Marksman", "MAR"], //21
	["Explosive Specialist", "EOD"], //24
	["Engineer", "ENG"], //25
	["Pilot", "PIL"] //26
];


["put", ["DEFAULT", ["U_MU_B_GuerillaGarment_blue","U_MU_B_GuerillaGarment_brown","U_MU_B_GuerillaGarment_grey","U_MU_B_GuerillaGarment_redcamo","U_MU_B_GuerillaGarment_orange","U_MU_B_GuerillaGarment_skull","U_MU_B_GuerillaGarment_yellow","U_MU_B_GuerillaGarment2","U_MU_B_GuerillaGarment2_blue","U_MU_B_GuerillaGarment2_brown","U_MU_B_GuerillaGarment2_grey","U_MU_I_GuerillaGarment2_redcamo","U_MU_B_GuerillaGarment2_orange","U_MU_B_GuerillaGarment2_skull","U_MU_B_GuerillaGarment2_yellow","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_BG_Guerrilla_6_1"]]] call keko_loadout_uniform;		


["put", ["DEFAULT", ["V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessO_brn","V_HarnessO_gry","V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli"]]] call keko_loadout_vest;
["put", ["MED", ["V_TacVestIR_blk"]]] call keko_loadout_vest;


_primary_mag = "30Rnd_556x45_Stanag";
_primary_mag_tracer = "30Rnd_556x45_Stanag_Tracer_Red";
_primary_mag_marksman = "20Rnd_762x51_Mag";
_primary_mag_lmg = "200Rnd_65x39_cased_Box_Tracer";
_primary_mag_mmg = "150Rnd_93x64_Mag";
["put", ["DEFAULT", [_primary_mag,_primary_mag_tracer]]] call keko_loadout_primary_mag;
["put", ["MAR", [_primary_mag_marksman]]] call keko_loadout_primary_mag;
["put", ["LMG", [_primary_mag_lmg]]] call keko_loadout_primary_mag;
["put", ["MMG", [_primary_mag_mmg]]] call keko_loadout_primary_mag;



_secondary_mag = "16Rnd_9x21_Mag";
["put", ["DEFAULT", [_secondary_mag]]] call keko_loadout_secondary_mag;


_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
_at_spec_mag = "RPG7_F";
["put", ["GRE", [_primary_mag_grenadier]]] call keko_loadout_tertiary_mag;
["put", ["SAT", [_at_spec_mag]]] call keko_loadout_tertiary_mag;


_grenade = "HandGrenade";
_smoke_white = "SmokeShell";
_smoke_green = "SmokeShellGreen";
["put", ["EXPLOSIVE", [_grenade]]] call keko_loadout_grenade;
["put", ["SMOKE_WHITE", [_smoke_white]]] call keko_loadout_grenade;
["put", ["SMOKE_GREEN", [_smoke_green]]] call keko_loadout_grenade;


_uniform_inventory = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[2, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"]];
_uniform_inventory pushBack [1, _secondary_mag];
_uniform_inventory pushBack [1, _smoke_white];
_uniform_inventory pushBack [1, _smoke_green];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;









["put", ["DEFAULT", [[3, _primary_mag],[3, _primary_mag_tracer],[1, _smoke_white],[2,_grenade]]]] call keko_loadout_vest_inventory;

_vest_inventory_medic = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_medic pushBack [2, _primary_mag];
_vest_inventory_medic pushBack [2, _primary_mag_tracer];
_vest_inventory_medic pushBack [2, _smoke_white];
["put", ["MED", _vest_inventory_medic]] call keko_loadout_vest_inventory;

_vest_inventory_doctor = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_doctor pushBack [2, _primary_mag];
_vest_inventory_doctor pushBack [2, _primary_mag_tracer];
_vest_inventory_doctor pushBack [2, _smoke_white];
["put", ["DOC", _vest_inventory_doctor]] call keko_loadout_vest_inventory;

["put", ["MAR", [[3, _primary_mag_marksman],[1, _smoke_white],[2, _grenade],[3, _primary_mag_marksman]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[3, _primary_mag_lmg],[1, _smoke_white],[1, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, _primary_mag_mmg],[1, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, _secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_camo","H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk"]]] call keko_loadout_helmet;
["put", ["SQL", ["H_Shemag_olive_hs"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_Bandanna_khk_hs"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_Cap_marshal"]]] call keko_loadout_helmet;


_lr_radio = "TFAR_rt1523g";
_backpack_medic = ["B_MU_Kitbag_blk","B_Kitbag_cbr","B_MU_Kitbag_digi","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg"];
_backpack_autorifle = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli"];
_backpack_engineer = ["B_MU_Carryall_blk","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_oli"];
["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", [_lr_radio]]] call keko_loadout_backpack;
["put", ["SQL", [_lr_radio]]] call keko_loadout_backpack;
["put", ["MED", _backpack_medic]] call keko_loadout_backpack;
["put", ["DOC", _backpack_medic]] call keko_loadout_backpack;
["put", ["LMG", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["LAS", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["MMG", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["MAS", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["GRE", ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk","B_AssaultPack_mcamo"]]] call keko_loadout_backpack;
["put", ["ENG", _backpack_engineer]] call keko_loadout_backpack;
["put", ["EOD", _backpack_engineer]] call keko_loadout_backpack;
["put", ["SAT", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["AAT", _backpack_autorifle]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;


["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, _primary_mag_mmg]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[6, _primary_mag_grenadier],[6,"UGL_FlareWhite_F"]]]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[1, _at_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["AAT", [[2, _at_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[6,"UGL_FlareWhite_F"],[3,"UGL_FlareGreen_F"],[3,"UGL_FlareRed_F"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[6,"UGL_FlareWhite_F"],[3,"UGL_FlareGreen_F"],[3,"UGL_FlareRed_F"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[40, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[4, "ACE_salineIV_500"],[2, "ACE_salineIV"],[6,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[40, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[4, "ACE_salineIV_500"],[2, "ACE_salineIV"],[4, "ACE_tourniquet"],[6,"adv_aceSplint_splint"],[1,"adv_aceCPR_AED"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[4,"DemoCharge_Remote_Mag"],[1,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["arifle_TRG21_F"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["arifle_TRG21_GL_F"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["srifle_DMR_06_olive_F"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["LMG_Mk200_F"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["MMG_01_tan_F"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", ["acc_flashlight","optic_Aco"]]] call keko_loadout_primary_items;
["put", ["MAR", ["acc_flashlight","optic_KHS_blk"]]] call keko_loadout_primary_items;
["put", ["LMG", ["acc_flashlight"]]] call keko_loadout_primary_items;
["put", ["MMG", ["acc_flashlight","bipod_01_F_snd"]]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["hgun_Rook40_F"]]] call keko_loadout_secondary_weapon;

["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["launch_RPG7_F"]]] call keko_loadout_tertiary_weapon;



["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;
["put", ["SAT", ["RPG7_F"]]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Binocular"]]] call keko_loadout_optics;
["put", ["SQL", ["Binocular"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;
["put", ["LAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["MAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["AAT", ["Binocular"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;