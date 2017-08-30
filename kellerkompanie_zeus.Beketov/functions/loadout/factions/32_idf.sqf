//Isreal Defense Forces
keko_loadout_uniform = ["TRYK_U_B_OD_OD_CombatUniform","TRYK_U_B_OD_OD_R_CombatUniform"];
keko_loadout_uniform_lead = ["UK3CB_BAF_U_JumperUniform_Plain"];		
keko_loadout_uniform_pilot = ["U_B_HeliPilotCoveralls"];

keko_loadout_vest = ["TAC_V_Sheriff_BA_T2","TAC_V_Sheriff_BA_T3"];
keko_loadout_vest_lead = ["TAC_V_Sheriff_BA_T"];
keko_loadout_vest_medic = ["TAC_V_Sheriff_BA_T4"];
keko_loadout_vest_grenadier = ["TAC_V_Sheriff_BA_T7"];
keko_loadout_vest_lmg = ["TAC_V_Sheriff_BA_T5"];
keko_loadout_vest_mmg = ["TAC_V_Sheriff_BA_T5"];
keko_loadout_vest_marksman = ["TAC_V_Sheriff_BA_T3"];
keko_loadout_vest_pilot = ["V_TacVest_blk"];

keko_loadout_primary_mag = "30Rnd_556x45_Stanag";
keko_loadout_primary_mag_tracer = "30Rnd_556x45_Stanag_Tracer_Red";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
keko_loadout_primary_mag_marksman = "rhsusf_20Rnd_762x51_m62_Mag";
keko_loadout_primary_mag_lmg = "150Rnd_762x54_Box_Tracer";
keko_loadout_primary_mag_mmg = "rhsusf_100Rnd_762x51_m62_tracer";
keko_loadout_secondary_mag = "9Rnd_45ACP_Mag";
keko_loadout_at_spec_mag = "Titan_AT";
keko_loadout_aa_spec_mag = "Titan_AA";

keko_loadout_grenade = "HandGrenade";
keko_loadout_smoke_white = "SmokeShell";
keko_loadout_smoke_green = "SmokeShellGreen";

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
keko_loadout_vest_inventory_marksman = [[5, keko_loadout_primary_mag_marksman],[1,keko_loadout_grenade],[5, keko_loadout_primary_mag_marksman]];
keko_loadout_vest_inventory_lmg = [[2, keko_loadout_primary_mag_lmg],[1, keko_loadout_smoke_white],[1,keko_loadout_grenade]];
keko_loadout_vest_inventory_mmg = [[2, keko_loadout_primary_mag_mmg],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];

keko_loadout_helmet = ["rhs_6b7_1m","rhs_6b7_1m_ess"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["H_Watchcap_camo"];

keko_loadout_lr_radio = ["TFAR_rt1523g_green","adv_tfar_rt1523g_green_ind","adv_tfar_rt1523g_green_opf"];
keko_loadout_backpack_medic = ["UK3CB_BAF_B_Kitbag_OLI"];
keko_loadout_backpack_autorifle = ["rhsusf_falconii"];
keko_loadout_backpack_grenadier = ["TAC_BP_HSG_GLP2_OD"];
keko_loadout_backpack_engineer = ["UK3CB_BAF_B_Carryall_OLI"];
keko_loadout_backpack_rifleman_at = [];
keko_loadout_backpack_at = ["B_FieldPack_oli"];

//keko_loadout_backpack_inventory_lead
//keko_loadout_backpack_inventory_jtac
//keko_loadout_backpack_inventory_sql
//keko_loadout_backpack_inventory_medic
//keko_loadout_backpack_inventory_engineer
keko_loadout_backpack_inventory_lmg = [[8, keko_loadout_primary_mag_lmg]];
keko_loadout_backpack_inventory_mmg = [[3, keko_loadout_primary_mag_mmg]];
keko_loadout_backpack_inventory_grenadier = [[10, keko_loadout_primary_mag_grenadier]];
keko_loadout_backpack_inventory_at = [[2, keko_loadout_at_spec_mag]];
keko_loadout_backpack_inventory_aa = [[2, keko_loadout_aa_spec_mag]];

keko_loadout_primary_weapon = ["arifle_TRG21_F"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["arifle_TRG21_GL_F"];
keko_loadout_primary_weapon_marksman = ["rhs_weap_sr25"];
keko_loadout_primary_weapon_lmg = ["LMG_Zafir_F"];
keko_loadout_primary_weapon_mmg = ["rhs_weap_m240G"];

keko_loadout_primary_items = ["BWA3_optic_EOTech_tan"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["optic_SOS"];
keko_loadout_primary_items_lmg = [];
keko_loadout_primary_items_mmg = [];

keko_loadout_secondary_weapon = "hgun_ACPC2_F";
keko_loadout_secondary_items = [];

keko_loadout_at = "rhs_weap_M136";
keko_loadout_at_mag = "rhs_m136_mag";

keko_loadout_at_spec = "launch_I_Titan_short_F";

keko_loadout_aa_spec = "launch_B_Titan_tna_F";

keko_loadout_optics = "Rangefinder";
keko_loadout_optics_jtac = "Laserdesignator";
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = "Binocular";