keko_loadout_uniform = ["UK3CB_BAF_U_Smock_Arctic"];
keko_loadout_uniform_lead = keko_loadout_uniform;	
keko_loadout_uniform_pilot = keko_loadout_uniform;	

keko_loadout_vest = ["fsg_vest_2"];
keko_loadout_vest_lead = ["fsg_vest_3"];
keko_loadout_vest_sql = ["fsg_vest_3"];
keko_loadout_vest_medic = ["fsg_vest_3"];
keko_loadout_vest_grenadier = ["fsg_vest_4"];
keko_loadout_vest_lmg = keko_loadout_vest;
keko_loadout_vest_mmg = keko_loadout_vest;
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = ["V_TacVest_blk"];

keko_loadout_primary_mag = "rhs_30Rnd_545x39_AK";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_tracer = "rhs_30Rnd_545x39_7N6_AK";
keko_loadout_primary_mag_grenadier = "rhs_VOG25";
keko_loadout_primary_mag_marksman = "rhs_10Rnd_762x54mmR_7N1";
keko_loadout_primary_mag_lmg = "rhs_100Rnd_762x54mmR_green";
keko_loadout_primary_mag_mmg = "rhs_100Rnd_762x54mmR_green";
keko_loadout_secondary_mag = "rhs_mag_9x18_8_57N181S";
keko_loadout_at_spec_mag = "rhs_rpg7_PG7VL_mag";
keko_loadout_aa_spec_mag = "rhs_mag_9k38_rocket";

keko_loadout_grenade = "rhs_mag_rgn";
keko_loadout_smoke_white = "rhs_mag_nspd";
keko_loadout_smoke_green = "rhs_mag_nspn_green";

keko_loadout_uniform_inventory pushBack [1, keko_loadout_secondary_mag];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_white];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_green];

keko_loadout_vest_inventory = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_lead = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_sql = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_jtac = [[2, keko_loadout_primary_mag],[2,keko_loadout_primary_mag_tracer],[4,"rhs_GRD40_White"],[4,"rhs_GRD40_Green"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"rhs_VG40OP_white"],[2,"rhs_VG40OP_green"],[2,"rhs_VG40OP_red"]];
keko_loadout_vest_inventory_medic pushBack [3, keko_loadout_primary_mag];
keko_loadout_vest_inventory_medic pushBack [3, keko_loadout_primary_mag_tracer];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_smoke_white];
keko_loadout_vest_inventory_grenadier = [[5, keko_loadout_primary_mag],[5, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_marksman = [[10, keko_loadout_primary_mag_marksman],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_lmg = [[4, keko_loadout_primary_mag_lmg],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_mmg = [[3, keko_loadout_primary_mag_mmg],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];


keko_loadout_helmet = ["fsg_helmet_2","fsg_helmet_3"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["fsg_booniehat_snw"];

keko_loadout_lr_radio = ["TFAR_rt1523g_green","adv_tfar_rt1523g_green_ind","adv_tfar_rt1523g_green_opf"];
keko_loadout_backpack_medic = ["UK3CB_BAF_B_Kitbag_Arctic"];
keko_loadout_backpack_autorifle = ["TRYK_B_Coyotebackpack_WH"];
keko_loadout_backpack_grenadier = ["fsg_fieldpack"];
keko_loadout_backpack_engineer = ["UK3CB_BAF_B_Carryall_Arctic"];
keko_loadout_backpack_at = ["fsg_fieldpack"];

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

keko_loadout_primary_weapon = ["fsg_weap_ak74m"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["fsg_weap_ak74m_gp25"];
keko_loadout_primary_weapon_marksman = ["rhs_weap_svdp"];
keko_loadout_primary_weapon_lmg = ["rhs_weap_m84"];
keko_loadout_primary_weapon_mmg = ["rhs_weap_pkp"];

keko_loadout_primary_items = ["rhs_acc_dtk","rhs_acc_2dpZenit","rhs_acc_pkas"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = ["rhs_acc_dtk","rhs_acc_pkas"];
keko_loadout_primary_items_marksman = ["rhs_acc_pso1m2"];
keko_loadout_primary_items_lmg = [];
keko_loadout_primary_items_mmg = ["rhs_acc_pkas"];

keko_loadout_secondary_weapon = "rhs_weap_makarov_pm";
keko_loadout_secondary_items = [];

keko_loadout_at = "rhs_weap_rpg26";
keko_loadout_at_mag = "rhs_rpg26_mag";

keko_loadout_at_spec = "rhs_weap_rpg7";
keko_loadout_at_spec_items = ["rhs_acc_pgo7v3"];

keko_loadout_aa_spec = "rhs_weap_igla";

keko_loadout_optics = "Rangefinder";
keko_loadout_optics_jtac = "Laserdesignator";
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = "Binocular";