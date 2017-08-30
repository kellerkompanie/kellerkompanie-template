//NATO
keko_loadout_uniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn"];
keko_loadout_uniform_lead = keko_loadout_uniform;		
keko_loadout_uniform_pilot = ["U_B_HeliPilotCoveralls"];

keko_loadout_vest = ["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"];
keko_loadout_vest_lead = ["V_Chestrig_rgr"];
keko_loadout_vest_medic = ["V_PlateCarrierSpec_rgr"];
keko_loadout_vest_grenadier = ["V_PlateCarrierGL_rgr"];
keko_loadout_vest_lmg = keko_loadout_vest;
keko_loadout_vest_mmg = keko_loadout_vest;
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = ["V_TacVest_blk"];

keko_loadout_primary_mag = "30Rnd_65x39_caseless_mag";
keko_loadout_primary_mag_tracer = "30Rnd_65x39_caseless_mag_Tracer";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
keko_loadout_primary_mag_marksman = "30Rnd_65x39_caseless_mag";
keko_loadout_primary_mag_lmg = "100Rnd_65x39_caseless_mag_Tracer";
keko_loadout_primary_mag_mmg = "130Rnd_338_Mag";
keko_loadout_secondary_mag = "11Rnd_45ACP_Mag";
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
keko_loadout_vest_inventory_lmg = [[4, keko_loadout_primary_mag_lmg],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade]];
keko_loadout_vest_inventory_mmg = [[2, keko_loadout_primary_mag_mmg],[2,keko_loadout_grenade]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]];

keko_loadout_helmet = ["H_HelmetSpecB_blk","H_HelmetSpecB_paint2","H_HelmetSpecB_paint1","H_HelmetSpecB_sand","H_HelmetSpecB_snakeskin","H_HelmetB","H_HelmetB_black","H_HelmetB_camo","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_sand","H_HelmetB_snakeskin"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["H_Beret_02","H_Beret_Colonel","H_Beret_blk","H_MilCap_mcamo"];

keko_loadout_lr_radio = ["TFAR_rt1523g_rhs","adv_tfar_rt1523g_rhs_ind","adv_tfar_rt1523g_rhs_opf"];
keko_loadout_backpack_medic = ["B_Kitbag_mcamo"];
keko_loadout_backpack_autorifle = ["B_FieldPack_khk"];
keko_loadout_backpack_grenadier = ["B_AssaultPack_rgr"];
keko_loadout_backpack_engineer = ["B_Carryall_cbr"];
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

keko_loadout_primary_weapon = ["arifle_MX_Black_F"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["arifle_MX_GL_Black_F"];
keko_loadout_primary_weapon_marksman = ["arifle_MXM_Black_F"];
keko_loadout_primary_weapon_lmg = ["arifle_MX_SW_Black_F"];
keko_loadout_primary_weapon_mmg = ["MMG_02_black_F"];

keko_loadout_primary_items = ["acc_pointer_IR","optic_Hamr"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["acc_pointer_IR","optic_SOS","bipod_01_F_blk"];
keko_loadout_primary_items_lmg = ["acc_pointer_IR","bipod_01_F_blk"];
keko_loadout_primary_items_mmg = ["acc_pointer_IR","bipod_01_F_blk"];

keko_loadout_secondary_weapon = "hgun_Pistol_heavy_01_F";
keko_loadout_secondary_items = [];

keko_loadout_at = "launch_NLAW_F";
keko_loadout_at_mag = "";

keko_loadout_at_spec = "launch_B_Titan_short_F";

keko_loadout_aa_spec = "launch_B_Titan_F";

keko_loadout_optics = "Rangefinder";
keko_loadout_optics_jtac = "Laserdesignator";
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = "Binocular";