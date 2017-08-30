//ARMY_UCP
keko_loadout_uniform = ["rhs_uniform_cu_ucp","rhs_uniform_cu_ucp_101st","rhs_uniform_cu_ucp_10th","rhs_uniform_cu_ucp_1stcav","rhs_uniform_cu_ucp_82nd"];
keko_loadout_uniform_lead = keko_loadout_uniform;		
keko_loadout_uniform_pilot = ["rhs_uniform_cu_ucp_1stcav"];

keko_loadout_vest = ["rhsusf_iotv_ucp_Rifleman"];
keko_loadout_vest_lead = ["rhsusf_iotv_ucp_Teamleader"];
keko_loadout_vest_sql = ["rhsusf_iotv_ucp_Squadleader"];
keko_loadout_vest_medic = ["rhsusf_iotv_ucp_Medic"];
keko_loadout_vest_grenadier = ["rhsusf_iotv_ucp_Repair","rhsusf_iotv_ucp_Grenadier"];
keko_loadout_vest_lmg = ["rhsusf_iotv_ucp_SAW"];
keko_loadout_vest_mmg = keko_loadout_vest_lmg;
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


keko_loadout_helmet = ["rhsusf_ach_helmet_ucp_norotos","rhsusf_ach_helmet_camo_ucp","rhsusf_ach_helmet_headset_ess_ucp","rhsusf_ach_helmet_headset_ucp","rhsusf_ach_helmet_ESS_ucp","rhsusf_ach_helmet_ucp"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["rhsusf_patrolcap_ucp"];

keko_loadout_lr_radio = ["TFAR_rt1523g_rhs","adv_tfar_rt1523g_rhs_ind","adv_tfar_rt1523g_rhs_opf"];
keko_loadout_backpack_medic = ["rhsusf_assault_eagleaiii_ucp"];
keko_loadout_backpack_autorifle = ["rhsusf_assault_eagleaiii_ucp"];
keko_loadout_backpack_grenadier = ["rhsusf_assault_eagleaiii_ucp"];
keko_loadout_backpack_engineer = ["rhsusf_assault_eagleaiii_ucp"];
keko_loadout_backpack_at = ["rhsusf_assault_eagleaiii_ocp"];

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

keko_loadout_primary_weapon = ["rhs_weap_m4"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["rhs_weap_m4_m320"];
keko_loadout_primary_weapon_marksman = ["rhs_weap_m14ebrri"];
keko_loadout_primary_weapon_lmg = ["rhs_weap_m249"];
keko_loadout_primary_weapon_mmg = ["rhs_weap_m240B"];

keko_loadout_primary_items = ["acc_pointer_IR","rhsusf_acc_compm4"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["acc_pointer_IR","rhsusf_acc_ACOG3","rhsusf_acc_harris_bipod"];
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