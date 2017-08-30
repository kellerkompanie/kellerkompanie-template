//Guerilla

keko_loadout_uniform_inventory = [[10, "ACE_fieldDressing"],[1, "ACE_morphine"],[2, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"]];
keko_loadout_vest_inventory_medic = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];

keko_loadout_backpack_inventory_lead = [[6,"UGL_FlareWhite_F"],[3,"UGL_FlareGreen_F"],[3,"UGL_FlareRed_F"]];
keko_loadout_backpack_inventory_jtac = [[4,"Laserbatteries"]];
keko_loadout_backpack_inventory_sql = keko_loadout_backpack_inventory_lead;
keko_loadout_backpack_inventory_medic = [[40, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[4, "ACE_salineIV_500"],[2, "ACE_salineIV"]];
keko_loadout_backpack_inventory_engineer = [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]];

keko_loadout_backpack_inventory_eod = [[4,"DemoCharge_Remote_Mag"],[1,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]];




keko_loadout_uniform = ["U_MU_B_GuerillaGarment_blue","U_MU_B_GuerillaGarment_brown","U_MU_B_GuerillaGarment_grey","U_MU_B_GuerillaGarment_redcamo","U_MU_B_GuerillaGarment_orange","U_MU_B_GuerillaGarment_skull","U_MU_B_GuerillaGarment_yellow","U_MU_B_GuerillaGarment2","U_MU_B_GuerillaGarment2_blue","U_MU_B_GuerillaGarment2_brown","U_MU_B_GuerillaGarment2_grey","U_MU_I_GuerillaGarment2_redcamo","U_MU_B_GuerillaGarment2_orange","U_MU_B_GuerillaGarment2_skull","U_MU_B_GuerillaGarment2_yellow","U_BG_Guerrilla_6_1","U_BG_Guerilla1_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3"];
keko_loadout_uniform_lead = keko_loadout_uniform;
keko_loadout_uniform_pilot = ["U_BG_Guerrilla_6_1]"];

keko_loadout_vest = ["V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_HarnessOGL_brn","V_HarnessOGL_gry","V_HarnessO_brn","V_HarnessO_gry","V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli"];
keko_loadout_vest_lead = keko_loadout_vest;
keko_loadout_vest_medic = ["V_TacVestIR_blk"];
keko_loadout_vest_grenadier = keko_loadout_vest;
keko_loadout_vest_lmg = keko_loadout_vest;
keko_loadout_vest_mmg = keko_loadout_vest;
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = keko_loadout_vest;

keko_loadout_primary_mag = "30Rnd_556x45_Stanag";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_tracer = "30Rnd_556x45_Stanag_Tracer_Red";
keko_loadout_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
keko_loadout_primary_mag_marksman = "20Rnd_762x51_Mag";
keko_loadout_primary_mag_lmg = "200Rnd_65x39_cased_Box_Tracer";
keko_loadout_primary_mag_mmg = "150Rnd_93x64_Mag";
keko_loadout_secondary_mag = "16Rnd_9x21_Mag";
keko_loadout_at_spec_mag = "RPG7_F";
keko_loadout_aa_spec_mag = "RPG7_F";

keko_loadout_grenade = "HandGrenade";
keko_loadout_smoke_white = "SmokeShell";
keko_loadout_smoke_green = "SmokeShellGreen";

keko_loadout_uniform_inventory pushBack [1, keko_loadout_secondary_mag];

keko_loadout_vest_inventory = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1,keko_loadout_grenade]];
keko_loadout_vest_inventory_lead = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1,keko_loadout_grenade]];
keko_loadout_vest_inventory_sql = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[1,keko_loadout_grenade]];
keko_loadout_vest_inventory_jtac = [[2, keko_loadout_primary_mag],[2,keko_loadout_primary_mag_tracer],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_primary_mag];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_primary_mag_tracer];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_smoke_white];
keko_loadout_vest_inventory_grenadier = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_marksman = [[6, keko_loadout_primary_mag_marksman],[1,keko_loadout_grenade]];
keko_loadout_vest_inventory_lmg = [[3, keko_loadout_primary_mag_lmg],[1,keko_loadout_grenade]];
keko_loadout_vest_inventory_mmg = [[2, keko_loadout_primary_mag_mmg],[1,keko_loadout_grenade]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];


keko_loadout_helmet = ["H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_camo","H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk"];
keko_loadout_helmet_sql = ["H_Shemag_olive_hs"];
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["H_Bandanna_khk_hs"];

keko_loadout_lr_radio = ["TFAR_rt1523g","adv_tfar_rt1523g_ind","adv_tfar_rt1523g_opf"];
keko_loadout_backpack_medic = ["B_MU_Kitbag_blk","B_Kitbag_cbr","B_MU_Kitbag_digi","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg"];
keko_loadout_backpack_autorifle = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli"];
keko_loadout_backpack_grenadier = ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk","B_AssaultPack_mcamo"];
keko_loadout_backpack_engineer = ["B_MU_Carryall_blk","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_oli"];
keko_loadout_backpack_rifleman_at = keko_loadout_backpack_autorifle;
keko_loadout_backpack_at = keko_loadout_backpack_autorifle;

//keko_loadout_backpack_inventory_lead
//keko_loadout_backpack_inventory_jtac
//keko_loadout_backpack_inventory_sql
//keko_loadout_backpack_inventory_medic
//keko_loadout_backpack_inventory_engineer
keko_loadout_backpack_inventory_lmg = [[2, keko_loadout_primary_mag_lmg]];
keko_loadout_backpack_inventory_mmg = [[2, keko_loadout_primary_mag_mmg]];
keko_loadout_backpack_inventory_grenadier = [[6, keko_loadout_primary_mag_grenadier],[6,"UGL_FlareWhite_F"]];
keko_loadout_backpack_inventory_at = [[2, keko_loadout_at_spec_mag]];
keko_loadout_backpack_inventory_aa = [[2, keko_loadout_aa_spec_mag]];

keko_loadout_primary_weapon = ["arifle_TRG21_F"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["arifle_TRG21_GL_F"];
keko_loadout_primary_weapon_marksman = ["srifle_DMR_06_olive_F"];
keko_loadout_primary_weapon_lmg = ["LMG_Mk200_F"];
keko_loadout_primary_weapon_mmg = ["MMG_01_tan_F"];

keko_loadout_primary_items = ["acc_flashlight","optic_Aco"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["optic_KHS_blk"];
keko_loadout_primary_items_lmg = ["acc_flashlight"];
keko_loadout_primary_items_mmg = ["acc_flashlight","bipod_01_F_snd"];

keko_loadout_secondary_weapon = "hgun_Rook40_F";
keko_loadout_secondary_items = [];

keko_loadout_at = "launch_RPG7_F";
keko_loadout_at_mag = "RPG7_F";

keko_loadout_at_spec = "launch_RPG7_F";

keko_loadout_aa_spec = "launch_RPG7_F";

keko_loadout_optics = "Binocular";
keko_loadout_optics_jtac = keko_loadout_optics;
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = keko_loadout_optics;