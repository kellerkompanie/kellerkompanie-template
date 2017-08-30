//AAF
keko_loadout_uniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"];
keko_loadout_uniform_lead = ["U_I_OfficerUniform"];		
keko_loadout_uniform_pilot = ["U_I_HeliPilotCoveralls"];

keko_loadout_vest = ["V_PlateCarrierIA1_dgtl","V_PlateCarrierIA2_dgtl"];
keko_loadout_vest_lead = ["V_TacVest_oli"];
keko_loadout_vest_medic = ["V_PlateCarrierIA2_dgtl"];
keko_loadout_vest_grenadier = ["V_PlateCarrierIAGL_dgtl"];
keko_loadout_vest_lmg = keko_loadout_vest;
keko_loadout_vest_mmg = keko_loadout_vest;
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = ["V_TacVest_blk"];

keko_loadout_primary_mag = "30Rnd_556x45_Stanag";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_tracer = "30Rnd_556x45_Stanag_Tracer_Red";
keko_loadout_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
keko_loadout_primary_mag_marksman = "20Rnd_762x51_Mag";
keko_loadout_primary_mag_lmg = "200Rnd_65x39_cased_Box_Tracer";
keko_loadout_primary_mag_mmg = "130Rnd_338_Mag";
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
keko_loadout_vest_inventory_marksman = [[5, keko_loadout_primary_mag_marksman],[5, "ACE_20Rnd_762x51_Mag_Tracer"],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_lmg = [[4, keko_loadout_primary_mag_lmg],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_mmg = [[2, keko_loadout_primary_mag_mmg],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];


keko_loadout_helmet = ["H_HelmetIA"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["H_MilCap_dgtl"];

keko_loadout_lr_radio = ["TFAR_rt1523g_black","TFAR_anprc155","adv_tfar_rt1523g_black_opf"];
keko_loadout_backpack_medic = ["B_Kitbag_rgr"];
keko_loadout_backpack_autorifle = ["B_FieldPack_oli"];
keko_loadout_backpack_grenadier = ["B_AssaultPack_dgtl"];
keko_loadout_backpack_engineer = ["B_Carryall_oli"];
keko_loadout_backpack_rifleman_at = [];
keko_loadout_backpack_at = ["B_FieldPack_cbr"];

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

keko_loadout_primary_weapon = ["arifle_Mk20C_F"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["arifle_Mk20_GL_F"];
keko_loadout_primary_weapon_marksman = ["srifle_EBR_MRCO_LP_BI_F"];
keko_loadout_primary_weapon_lmg = ["LMG_Mk200_LP_BI_F"];
keko_loadout_primary_weapon_mmg = ["MMG_02_black_F"];

keko_loadout_primary_items = ["acc_pointer_IR","optic_MRCO"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["acc_pointer_IR","optic_SOS","bipod_03_F_blk"];
keko_loadout_primary_items_lmg = ["acc_pointer_IR","bipod_03_F_blk"];
keko_loadout_primary_items_mmg = ["acc_pointer_IR","bipod_03_F_blk"];

keko_loadout_secondary_weapon = "hgun_ACPC2_F";
keko_loadout_secondary_items = [];

keko_loadout_at = "launch_NLAW_F";
keko_loadout_at_mag = "";

keko_loadout_at_spec = "launch_I_Titan_short_F";

keko_loadout_aa_spec = "launch_I_Titan_F";

keko_loadout_optics = "Rangefinder";
keko_loadout_optics_jtac = "Laserdesignator";
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = "Binocular";