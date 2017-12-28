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


["put", ["#PRIMARY_MAG", "30Rnd_556x45_Stanag"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "30Rnd_556x45_Stanag_Tracer_Red"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "20Rnd_762x51_Mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "20Rnd_762x51_Mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "200Rnd_65x39_cased_Box_Tracer"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "150Rnd_93x64_Mag"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "16Rnd_9x21_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "1Rnd_HE_Grenade_shell"]] call keko_loadout_keywords;
["put", ["#RAT_MAG", "RPG32_F"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "RPG7_F"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "Titan_AA"]] call keko_loadout_keywords;
["put", ["#GRENADE", "HandGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_Kitbag_rgr"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_TacticalPack_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_Carryall_oli"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_FieldPack_oli"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "launch_NLAW_F"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "launch_RPG7_F"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "launch_I_Titan_F"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["U_MU_B_GuerillaGarment_blue","U_MU_B_GuerillaGarment_brown","U_MU_B_GuerillaGarment_grey","U_MU_B_GuerillaGarment_redcamo","U_MU_B_GuerillaGarment_orange","U_MU_B_GuerillaGarment_skull","U_MU_B_GuerillaGarment_yellow","U_MU_B_GuerillaGarment2","U_MU_B_GuerillaGarment2_blue","U_MU_B_GuerillaGarment2_brown","U_MU_B_GuerillaGarment2_grey","U_MU_I_GuerillaGarment2_redcamo","U_MU_B_GuerillaGarment2_orange","U_MU_B_GuerillaGarment2_skull","U_MU_B_GuerillaGarment2_yellow","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_BG_Guerrilla_6_1"]]] call keko_loadout_uniform;		


["put", ["DEFAULT", ["V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessO_brn","V_HarnessO_gry","V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli"]]] call keko_loadout_vest;
["put", ["MED", ["V_TacVestIR_blk"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;
["put", ["MMG", ["#PRIMARY_MAG_MMG"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;



["put", ["GRE", ["#GRENADIER_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;



_uniform_inventory = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[2, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"]];
_uniform_inventory pushBack [1, "#SECONDARY_MAG"];
_uniform_inventory pushBack [1, "#SMOKE_WHITE"];
_uniform_inventory pushBack [1, "#SMOKE_GREEN"];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;




["put", ["DEFAULT", [[3, "#PRIMARY_MAG"],[3, "#PRIMARY_MAG_TRACER"],[1, "#SMOKE_WHITE"],[2,"#GRENADE"]]]] call keko_loadout_vest_inventory;

["put", ["MED", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[2, "#SMOKE_WHITE"]]]] call keko_loadout_vest_inventory;
["put", ["DOC", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[2, "#SMOKE_WHITE"]]]] call keko_loadout_vest_inventory;

["put", ["MAR", [[3, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[3, "#PRIMARY_MAG_MARKSMAN"]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[3, "#PRIMARY_MAG_LMG"],[1, "#SMOKE_WHITE"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, "#PRIMARY_MAG_MMG"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_camo","H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk"]]] call keko_loadout_helmet;
["put", ["SQL", ["H_Shemag_olive_hs"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_Bandanna_khk_hs"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_Cap_marshal"]]] call keko_loadout_helmet;


_backpack_medic = ["B_MU_Kitbag_blk","B_Kitbag_cbr","B_MU_Kitbag_digi","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg"];
_backpack_autorifle = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli"];
_backpack_engineer = ["B_MU_Carryall_blk","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_oli"];
["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SQL", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
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
["put", ["LMG", [[2, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, "#PRIMARY_MAG_MMG"]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[6, "#GRENADIER_MAG"],[6,"UGL_FlareWhite_F"]]]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[1, "#AT_MAG"]]]] call keko_loadout_backpack_inventory;
["put", ["AAT", [[2, "#AT_MAG"]]]] call keko_loadout_backpack_inventory;
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
["put", ["SAT", ["#SAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;



["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;
["put", ["SAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;


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