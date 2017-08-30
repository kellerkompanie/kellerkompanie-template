// Polizei (Zivil)
keko_loadout_uniform = ["TRYK_U_B_BLK_OD_Rollup_CombatUniform","TRYK_U_B_BLK_tan_Rollup_CombatUniform","TRYK_U_B_wh_OD_Rollup_CombatUniform","TRYK_U_B_wh_tan_Rollup_CombatUniform","TRYK_shirts_DENIM_BK","TRYK_shirts_DENIM_BL","TRYK_shirts_DENIM_BWH","TRYK_shirts_DENIM_od","TRYK_shirts_DENIM_R","TRYK_shirts_DENIM_RED2","TRYK_shirts_DENIM_WH","TRYK_shirts_DENIM_WHB","TRYK_shirts_DENIM_ylb","TRYK_shirts_DENIM_od_Sleeve","TRYK_shirts_DENIM_ylb_Sleeve","TRYK_shirts_PAD_BK","TRYK_shirts_BLK_PAD_BK","TRYK_shirts_OD_PAD_BK","TRYK_shirts_TAN_PAD_BK","TRYK_shirts_PAD_BL","TRYK_shirts_BLK_PAD_BL","TRYK_shirts_OD_PAD_BL","TRYK_U_pad_hood_Blod","TRYK_U_pad_hood_odBK","TRYK_U_pad_hood_Cl","TRYK_U_denim_hood_blk","TRYK_U_B_RED_T_BG_BR","TRYK_U_B_Denim_T_BK"];
keko_loadout_uniform_lead = ["TRYK_U_B_wh_blk_Rollup_CombatUniform"];	
keko_loadout_uniform_pilot = keko_loadout_uniform;	

keko_loadout_vest = ["EF_GSG9_1","seko_weste"];
keko_loadout_vest_lead = keko_loadout_vest;
keko_loadout_vest_sql = keko_loadout_vest;
keko_loadout_vest_medic = keko_loadout_vest;
keko_loadout_vest_grenadier = keko_loadout_vest;
keko_loadout_vest_lmg = keko_loadout_vest;
keko_loadout_vest_mmg = keko_loadout_vest;
keko_loadout_vest_marksman = keko_loadout_vest;
keko_loadout_vest_pilot = ["V_TacVest_blk"];

keko_loadout_primary_mag = "hlc_30rnd_556x45_SPR_G36";
keko_loadout_primary_mag_medic = keko_loadout_primary_mag;
keko_loadout_primary_mag_tracer = "hlc_30rnd_556x45_SPR_G36";
keko_loadout_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
keko_loadout_primary_mag_marksman = "hlc_20rnd_762x51_b_G3";
keko_loadout_primary_mag_lmg = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
keko_loadout_primary_mag_mmg = "rhs_200rnd_556x45_M_SAW";
keko_loadout_secondary_mag = "UK3CB_BAF_9_17Rnd";
keko_loadout_at_spec_mag = "BWA3_Pzf3_IT";
keko_loadout_aa_spec_mag = "BWA3_Fliegerfaust_Mag";

keko_loadout_grenade = "ACE_M84";
keko_loadout_smoke_white = "SmokeShell";
keko_loadout_smoke_green = "SmokeShellGreen";

keko_loadout_uniform_inventory pushBack [1, keko_loadout_secondary_mag];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_white];
keko_loadout_uniform_inventory pushBack [1, keko_loadout_smoke_green];

keko_loadout_vest_inventory = [[4, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_lead = [[4, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_sql = [[4, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_jtac = [[2, keko_loadout_primary_mag],[2,keko_loadout_primary_mag_tracer],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_medic pushBack [2,"ACE_CableTie"];
keko_loadout_vest_inventory_medic pushBack [3, keko_loadout_primary_mag];
keko_loadout_vest_inventory_medic pushBack [3, keko_loadout_primary_mag_tracer];
keko_loadout_vest_inventory_medic pushBack [2, keko_loadout_smoke_white];
keko_loadout_vest_inventory_grenadier = [[4, keko_loadout_primary_mag],[3, keko_loadout_primary_mag_tracer],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_marksman = [[6, keko_loadout_primary_mag_marksman],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_lmg = [[1, keko_loadout_primary_mag_lmg],[1, keko_loadout_smoke_white],[3,keko_loadout_grenade],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_mmg = [[2, keko_loadout_primary_mag_mmg],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_uav = [[2,"ACE_UAVBattery"],[2, keko_loadout_primary_mag],[2, keko_loadout_primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"],[2,"ACE_CableTie"]];
keko_loadout_vest_inventory_pilot = [[2, keko_loadout_secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"],[2,"ACE_CableTie"]];


keko_loadout_helmet = ["H_Watchcap_blk","H_Watchcap_cbr","H_Watchcap_camo","H_Watchcap_khk","H_Cap_blk","H_Cap_blu","H_Cap_oli","H_Cap_oli_hs","H_Cap_police","H_Cap_red","TRYK_H_headsetcap_Glasses","TRYK_H_headsetcap_blk_Glasses","TRYK_H_headsetcap_od_Glasses","TRYK_H_headsetcap_blk","TRYK_H_headsetcap_od","TRYK_H_headsetcap","TRYK_R_CAP_BLK","TRYK_R_CAP_TAN","TRYK_r_cap_blk_Glasses","TRYK_r_cap_od_Glasses","TRYK_UA_CAP","TRYK_UA_CAP_GR","TRYK_UA_CAP_U","TRYK_UA_CAP2R","TRYK_UA_CAP_GR2R","TRYK_UA_CAP_U2R","TRYK_UA_CAP2","TRYK_UA_CAP_U2"];
keko_loadout_helmet_sql = keko_loadout_helmet;
keko_loadout_helmet_ftl = keko_loadout_helmet;
keko_loadout_helmet_lead = ["TRYK_H_wig"];

keko_loadout_lr_radio = ["TFAR_rt1523g_black","adv_tfar_rt1523g_black_ind","adv_tfar_rt1523g_black_opf"];
keko_loadout_backpack_medic = ["TRYK_B_Medbag_BK"];
keko_loadout_backpack_autorifle = ["B_AssaultPack_blk"];
keko_loadout_backpack_grenadier = ["TAC_BP_HSG_GLP_B"];
keko_loadout_backpack_engineer = ["TRYK_B_Carryall_blk"];
keko_loadout_backpack_at = ["B_FieldPack_blk"];
keko_loadout_backpack_rifleman_at = ["B_AssaultPack_blk"];

keko_loadout_backpack_inventory_lead = [];
//keko_loadout_backpack_inventory_jtac
keko_loadout_backpack_inventory_sql = [];
//keko_loadout_backpack_inventory_medic
//keko_loadout_backpack_inventory_engineer
keko_loadout_backpack_inventory_lmg = [[8, keko_loadout_primary_mag_lmg]];
keko_loadout_backpack_inventory_mmg = [[5, keko_loadout_primary_mag_mmg]];
keko_loadout_backpack_inventory_grenadier = [[6, "ACE_M84"],[4,"HandGrenade"]];
keko_loadout_backpack_inventory_at = [[2, keko_loadout_at_spec_mag]];
keko_loadout_backpack_inventory_aa = [[2, keko_loadout_aa_spec_mag]];
keko_loadout_backpack_inventory_rifleman_at = [[1,"BWA3_Pzf3_IT"]];

keko_loadout_primary_weapon = ["hlc_rifle_G36KV"];
keko_loadout_primary_weapon_medic = keko_loadout_primary_weapon;
keko_loadout_primary_weapon_grenadier = ["hlc_rifle_G36KV"];
keko_loadout_primary_weapon_marksman = ["hlc_rifle_psg1"];
keko_loadout_primary_weapon_lmg = ["rhs_weap_m27iar_grip"];
keko_loadout_primary_weapon_mmg = ["rhs_weap_m249_pip_S_vfg"];

keko_loadout_primary_items = ["rhsusf_acc_rotex5_grey","BWA3_acc_VarioRay_irlaser","UK3CB_BAF_Eotech"];
keko_loadout_primary_items_medic = keko_loadout_primary_items;
keko_loadout_primary_items_grenadier = keko_loadout_primary_items;
keko_loadout_primary_items_marksman = ["rhsusf_acc_harris_bipod"];
keko_loadout_primary_items_lmg = ["rhsusf_acc_anpeq15_bk","UK3CB_BAF_Eotech"];
keko_loadout_primary_items_mmg = ["rhsusf_acc_anpeq15side_bk","UK3CB_BAF_Eotech"];

keko_loadout_secondary_weapon = "UK3CB_BAF_L131A1";
keko_loadout_secondary_items = ["UK3CB_BAF_Flashlight_L131A1"];

keko_loadout_at = "BWA3_Pzf3";
keko_loadout_at_mag = "BWA3_Pzf3_IT";

keko_loadout_at_spec = "BWA3_Pzf3";

keko_loadout_aa_spec = "BWA3_Fliegerfaust";

keko_loadout_optics = "Rangefinder";
keko_loadout_optics_jtac = "Laserdesignator";
keko_loadout_optics_sql = keko_loadout_optics;
keko_loadout_optics_ftl = "Binocular";