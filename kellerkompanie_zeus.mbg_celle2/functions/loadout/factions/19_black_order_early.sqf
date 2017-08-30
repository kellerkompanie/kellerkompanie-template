// Early Black Order
keko_loadout_uniform = ["U_B_CombatUniform_mcam_tshirt","U_I_G_resistanceLeader_F","U_BG_Guerrilla_6_1","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_I_G_Story_Protagonist_F","TRYK_B_TRYK_3C_T","TRYK_DMARPAT_T","TRYK_U_B_BLOD_T"];
keko_loadout_uniform_lead = keko_loadout_uniform;		
keko_loadout_uniform_pilot = ["U_B_CombatUniform_mcam_tshirt"];

keko_loadout_vest = ["TRYK_V_ArmorVest_Brown2","TRYK_V_ArmorVest_cbr2","TRYK_V_ArmorVest_khk2","TRYK_V_ArmorVest_coyo2","TRYK_V_ArmorVest_Delta2","TRYK_V_ArmorVest_green2","TRYK_V_ArmorVest_Ranger2","TRYK_V_ArmorVest_tan2","TRYK_V_ArmorVest_Brown","TRYK_V_ArmorVest_CBR","TRYK_V_ArmorVest_coyo","TRYK_V_ArmorVest_Delta","TRYK_V_ArmorVest_green","TRYK_V_ArmorVest_khk","TRYK_V_ArmorVest_Ranger"];
keko_loadout_vest_lead = keko_loadout_vest;
keko_loadout_vest_sql = keko_loadout_vest;
keko_loadout_vest_medic = keko_loadout_vest;
keko_loadout_vest_grenadier = ["TRYK_V_PlateCarrier_coyo","TRYK_V_PlateCarrier_wood","TRYK_V_PlateCarrier_coyo_L","TRYK_V_PlateCarrier_blk","TRYK_V_PlateCarrier_blk_L","TRYK_V_PlateCarrier_wood_L"];
keko_loadout_vest_lmg = keko_loadout_vest;
keko_loadout_vest_mmg = keko_loadout_vest;
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = ["V_TacVest_blk"];

keko_loadout_primary_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_tracer = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
keko_loadout_primary_mag_grenadier = "rhs_mag_M441_HE";
keko_loadout_primary_mag_marksman = "rhsusf_20Rnd_762x51_m993_Mag";
keko_loadout_primary_mag_lmg = "rhs_200rnd_556x45_M_SAW";
keko_loadout_primary_mag_mmg = "rhsusf_100Rnd_762x51_m62_tracer";
keko_loadout_secondary_mag = "rhsusf_mag_15Rnd_9x19_FMJ";
keko_loadout_at_spec_mag = "rhs_fgm148_magazine_AT";
keko_loadout_aa_spec_mag = "rhs_fim92_mag";

keko_loadout_grenade = "rhs_mag_m67";
keko_loadout_smoke_white = "rhs_mag_an_m8hc";
keko_loadout_smoke_green = "rhs_mag_m18_green";

keko_loadout_uniform_inventory pushBack [1, keko_loadout_secondary_mag];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_white];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_green];

keko_loadout_vest_inventory = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_lead = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_sql = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_jtac = [[2, keko_loadout_primary_mag],[2,keko_loadout_primary_mag_tracer],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_primary_mag];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_primary_mag_tracer];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_smoke_white];
keko_loadout_vest_inventory_grenadier = [[3, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_marksman = [[4, keko_loadout_primary_mag_marksman],[4, "rhsusf_20Rnd_762x51_m62_Mag"],[1, keko_loadout_smoke_white],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_lmg = [[4, keko_loadout_primary_mag_lmg],[1, keko_loadout_smoke_white],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_mmg = [[3, keko_loadout_primary_mag_mmg],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];


keko_loadout_helmet = ["H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_camo","H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_oli","H_Booniehat_tan","H_Cap_blk","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_oli","H_Cap_red","H_Cap_usblack","H_Cap_tan","H_Cap_tan_specops_US"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["H_Bandanna_khk_hs","H_Booniehat_khk_hs","H_Cap_oli_hs"];

keko_loadout_lr_radio = ["TFAR_rt1523g_black","adv_tfar_rt1523g_black_ind","adv_tfar_rt1523g_black_opf"];
keko_loadout_backpack_medic = ["B_Kitbag_cbr","B_Kitbag_rgr","B_Kitbag_mcamo","B_Kitbag_sgg","TRYK_B_Kitbag_blk"];
keko_loadout_backpack_autorifle = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli"];
keko_loadout_backpack_grenadier = ["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_sgg"];
keko_loadout_backpack_engineer = ["B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_oli"];
keko_loadout_backpack_at = keko_loadout_backpack_autorifle;


keko_loadout_backpack_inventory_lead = [];
keko_loadout_backpack_inventory_sql = [];
//keko_loadout_backpack_inventory_lead
//keko_loadout_backpack_inventory_jtac
//keko_loadout_backpack_inventory_sql
//keko_loadout_backpack_inventory_medic
//keko_loadout_backpack_inventory_engineer
keko_loadout_backpack_inventory_lmg = [[4, keko_loadout_primary_mag_lmg]];
keko_loadout_backpack_inventory_mmg = [[3, keko_loadout_primary_mag_mmg]];
keko_loadout_backpack_inventory_grenadier = [[6, keko_loadout_primary_mag_grenadier]];
keko_loadout_backpack_inventory_at = [[1, keko_loadout_at_spec_mag]];
keko_loadout_backpack_inventory_aa = [[1, keko_loadout_aa_spec_mag]];

keko_loadout_primary_weapon = ["rhs_weap_hk416d10","rhs_weap_hk416d145","rhs_weap_m16a4","rhs_weap_m16a4_carryhandle","rhs_weap_m27iar","rhs_weap_m27iar_grip","rhs_weap_m4","rhs_weap_m4_carryhandle","rhs_weap_m4a1_carryhandle","rhs_weap_m4a1","rhs_weap_m4a1_d"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["rhs_weap_hk416d10_m320","rhs_weap_hk416d145_m320","rhs_weap_m16a4_carryhandle_M203","rhs_weap_m4_m203","rhs_weap_m4_m203S","rhs_weap_m4_m320",
"rhs_weap_m4a1_carryhandle_m203","rhs_weap_m4a1_carryhandle_m203S","rhs_weap_m4a1_m203s_d"];
keko_loadout_primary_weapon_marksman = ["rhs_weap_m14ebrri"];
keko_loadout_primary_weapon_lmg = ["rhs_weap_m249"];
keko_loadout_primary_weapon_mmg = ["rhs_weap_m240B"];

keko_loadout_primary_items = ["ACE_acc_pointer_green"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["ACE_acc_pointer_green","rhsusf_acc_ACOG3","rhsusf_acc_harris_bipod"];
keko_loadout_primary_items_lmg = [];
keko_loadout_primary_items_mmg = [];

keko_loadout_secondary_weapon = "rhsusf_weap_m9";
keko_loadout_secondary_items = [];

keko_loadout_at = "rhs_weap_M136";
keko_loadout_at_mag = "";

keko_loadout_at_spec = "rhs_weap_fgm148";	

keko_loadout_aa_spec = "rhs_weap_fim92";

keko_loadout_optics = "Rangefinder";
keko_loadout_optics_jtac = "Laserdesignator";
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = "Binocular";

keko_loadout_insignia = "TERROR_Insignia";