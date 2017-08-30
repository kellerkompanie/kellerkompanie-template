// People Liberation Army
keko_loadout_uniform = ["PLA_CombatUniform_HM_SB","PLA_CombatUniform_HM_SBCB"];
keko_loadout_uniform_lead = ["PLA_CombatUniform_HM_SW","PLA_CombatUniform_HM_SWCB"];	
keko_loadout_uniform_pilot = keko_loadout_uniform;	

keko_loadout_vest = ["PLA_B04_RF_D","PLA_T15Vest_RF_D"];
keko_loadout_vest_lead = ["PLA_T15Vest_RD_D"];
keko_loadout_vest_sql = ["PLA_T15Vest_RD_D"];
keko_loadout_vest_medic = keko_loadout_vest;
keko_loadout_vest_grenadier = keko_loadout_vest;
keko_loadout_vest_lmg = ["PLA_B04_MG_D"];
keko_loadout_vest_mmg = ["PLA_B04_MG_D"];
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = keko_loadout_vest;

keko_loadout_primary_mag = "VME_QBZ95_1_30Rnd_DBP10";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_tracer = "VME_QBZ95_1_30Rnd_DBP10_Tracer_Green";
keko_loadout_primary_mag_grenadier = "VME_1Rnd_HE_GL";
keko_loadout_primary_mag_marksman = "VME_QBU88_10Rnd_DBP10";
keko_loadout_primary_mag_lmg = "VME_QJB95_1_75Rnd_DBP10";
keko_loadout_primary_mag_mmg = "150Rnd_93x64_Mag";
keko_loadout_secondary_mag = "16Rnd_9x21_Mag";
keko_loadout_at_spec_mag = "Titan_AT";
keko_loadout_aa_spec_mag = "Titan_AA";

keko_loadout_grenade = "HandGrenade";
keko_loadout_smoke_white = "SmokeShell";
keko_loadout_smoke_green = "SmokeShellGreen";

keko_loadout_uniform_inventory pushBack [1, keko_loadout_secondary_mag];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_white];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_green];

keko_loadout_vest_inventory = [[4, keko_loadout_primary_mag],[4, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_lead = [[4, keko_loadout_primary_mag],[4, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_sql = [[4, keko_loadout_primary_mag],[4, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_jtac = [[2, keko_loadout_primary_mag],[2,keko_loadout_primary_mag_tracer],[10,"VME_1Rnd_Smoke_GL"]];
keko_loadout_vest_inventory_medic pushBack [4, keko_loadout_primary_mag];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_smoke_white];
keko_loadout_vest_inventory_grenadier = [[4, keko_loadout_primary_mag],[4, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_marksman = [[6, keko_loadout_primary_mag_marksman],[6, "VME_QBU88_10Rnd_DBP10_Tracer_Green"],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_lmg = [[1, keko_loadout_smoke_white],[3,keko_loadout_grenade],[6, keko_loadout_primary_mag_lmg]];
keko_loadout_vest_inventory_mmg = [[2, keko_loadout_primary_mag_mmg]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];

keko_loadout_helmet = ["VME_PLA_Helmet_D","VME_PLA_Helmet_D_G"];
keko_loadout_helmet_sql = ["VME_PLA_Helmet_D_R_O","VME_PLA_Helmet_D_R"];
keko_loadout_helmet_ftl = keko_loadout_helmet_sql;
keko_loadout_helmet_lead = ["VME_PLA_Hat_D"];

keko_loadout_lr_radio = ["TFAR_rt1523g_black","adv_tfar_rt1523g_black_ind","adv_tfar_rt1523g_black_opf"];
keko_loadout_backpack_medic = ["BWA3_Kitbag_Tropen_Medic"];
keko_loadout_backpack_autorifle = ["rhsusf_falconii_coy"];
keko_loadout_backpack_grenadier = ["TAC_BP_HSG_GLP2_B"];
keko_loadout_backpack_engineer = ["B_Carryall_khk"];
keko_loadout_backpack_at = ["B_FieldPack_khk"];
keko_loadout_backpack_rifleman_at = [];

keko_loadout_backpack_inventory_lead = [[10, keko_loadout_primary_mag_grenadier]];
keko_loadout_backpack_inventory_jtac = [[4,"Laserbatteries"]];
keko_loadout_backpack_inventory_sql = [[10, keko_loadout_primary_mag_grenadier]];		
//keko_loadout_backpack_inventory_medic
//keko_loadout_backpack_inventory_engineer
keko_loadout_backpack_inventory_lmg = [[4, keko_loadout_primary_mag_lmg],[4, "VME_QJB95_1_75Rnd_DBP10_Tracer_Green"]];
keko_loadout_backpack_inventory_mmg = [[8, keko_loadout_primary_mag_mmg]];
keko_loadout_backpack_inventory_grenadier = [[10, keko_loadout_primary_mag_grenadier]];
keko_loadout_backpack_inventory_at = [[2, keko_loadout_at_spec_mag]];
keko_loadout_backpack_inventory_aa = [[2, keko_loadout_aa_spec_mag]];
keko_loadout_backpack_inventory_rifleman_at = [];

keko_loadout_primary_weapon = ["vme_pla_qbz95_1"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["vme_pla_qbz95_1GL"];
keko_loadout_primary_weapon_marksman = ["vme_pla_qbu88"];
keko_loadout_primary_weapon_lmg = ["vme_pla_qjb95_1"];
keko_loadout_primary_weapon_mmg = ["MMG_01_tan_F"];

keko_loadout_primary_items = [];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["VME_QBU88_Scope"];
keko_loadout_primary_items_lmg = [];
keko_loadout_primary_items_mmg = [];

keko_loadout_secondary_weapon = "hgun_Rook40_F";
keko_loadout_secondary_items = [];

keko_loadout_at = "vme_pla_PF89";
keko_loadout_at_mag = "vme_pla_PF89_Rocket";

keko_loadout_at_spec = "launch_O_Titan_short_F";

keko_loadout_aa_spec = "launch_O_Titan_F";

keko_loadout_optics = "Rangefinder";
keko_loadout_optics_jtac = "Laserdesignator";
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = "Binocular";