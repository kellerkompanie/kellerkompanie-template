//US Ranger Woodland
keko_loadout_uniform = ["TRYK_U_B_wood_CombatUniform","TRYK_U_B_woodR_CombatUniformTshirt"];
keko_loadout_uniform_lead = keko_loadout_uniform;	
keko_loadout_uniform_pilot = keko_loadout_uniform;	

keko_loadout_vest = ["TRYK_V_ArmorVest_Ranger2","TRYK_V_ArmorVest_Ranger"];
keko_loadout_vest_lead = ["TRYK_V_PlateCarrier_wood_L"];
keko_loadout_vest_sql = ["TRYK_V_PlateCarrier_wood_L"];
keko_loadout_vest_medic = ["TRYK_V_PlateCarrier_wood"];
keko_loadout_vest_grenadier = ["TRYK_V_PlateCarrier_wood"];
keko_loadout_vest_lmg = keko_loadout_vest;
keko_loadout_vest_mmg = keko_loadout_vest;
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = ["V_TacVest_blk"];

keko_loadout_primary_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_tracer = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
keko_loadout_primary_mag_grenadier = "rhs_mag_M441_HE";
keko_loadout_primary_mag_marksman = "rhsusf_20Rnd_762x51_m118_special_Mag";
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

keko_loadout_vest_inventory = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_lead = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_sql = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_jtac = [[2, keko_loadout_primary_mag],[2,keko_loadout_primary_mag_tracer],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]];
keko_loadout_vest_inventory_medic pushBack [3, keko_loadout_primary_mag];
keko_loadout_vest_inventory_medic pushBack [3, keko_loadout_primary_mag_tracer];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_smoke_white];
keko_loadout_vest_inventory_grenadier = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_marksman = [[5, keko_loadout_primary_mag_marksman],[5, "rhsusf_20Rnd_762x51_m62_Mag"],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_lmg = [[4, keko_loadout_primary_mag_lmg],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_mmg = [[3, keko_loadout_primary_mag_mmg],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];


keko_loadout_helmet = ["rhssaf_helmet_m97_woodland","rhssaf_helmet_m97_woodland_black_ess","rhssaf_helmet_m97_woodland_black_ess_bare"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["rhs_Booniehat_m81"];

keko_loadout_lr_radio = ["TFAR_rt1523g_black","adv_tfar_rt1523g_black_ind","adv_tfar_rt1523g_black_opf"];
keko_loadout_backpack_medic = ["TRYK_B_Kitbag_Base"];
keko_loadout_backpack_autorifle = ["rhsusf_falconii"];
keko_loadout_backpack_grenadier = ["rhsusf_falconii"];
keko_loadout_backpack_engineer = ["TRYK_B_Carryall_wood"];
keko_loadout_backpack_at = ["TRYK_B_FieldPack_Wood"];

//keko_loadout_backpack_inventory_lead
//keko_loadout_backpack_inventory_jtac
//keko_loadout_backpack_inventory_sql
//keko_loadout_backpack_inventory_medic
//keko_loadout_backpack_inventory_engineer
keko_loadout_backpack_inventory_lmg = [[8, keko_loadout_primary_mag_lmg]];
keko_loadout_backpack_inventory_mmg = [[5, keko_loadout_primary_mag_mmg]];
keko_loadout_backpack_inventory_grenadier = [[10, keko_loadout_primary_mag_grenadier]];
keko_loadout_backpack_inventory_at = [[2, keko_loadout_at_spec_mag]];
keko_loadout_backpack_inventory_aa = [[2, keko_loadout_aa_spec_mag]];

keko_loadout_primary_weapon = ["rhs_weap_m4a1_blockII_KAC_wd"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["rhs_weap_m4a1_blockII_M203_wd"];
keko_loadout_primary_weapon_marksman = ["rhs_weap_sr25_ec_wd"];
keko_loadout_primary_weapon_lmg = ["rhs_weap_m249_pip_S"];
keko_loadout_primary_weapon_mmg = ["rhs_weap_m240B"];

keko_loadout_primary_items = ["rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR","rhsusf_acc_nt4_black"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["rhsusf_acc_SR25S","rhsusf_acc_ACOG3_USMC","rhsusf_acc_harris_bipod"];
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