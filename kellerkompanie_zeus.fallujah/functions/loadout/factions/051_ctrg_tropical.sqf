// CTRG Tropical
keko_loadout_list = [
	["---- Führung ----", ""], //0
	["Platoon Lead", "LEA"], //1
	["Platoon Sergeant", "SER"], //2
	["Platoon Medic", "DOC"], //3
	["Squad Leader", "SQL"], //4
	["Fireteam Leader", "FTL"], //5
	["Combat Life Saver", "MED"], //6
	["---- Plebs ----", ""], //7
	["Rifleman", "RIF"], //8
	["Rifleman Anti-Tank", "RAT"], //9
	["Grenadier", "GRE"], //10
	["Light Machine Gunner", "LMG"], //11
	["Light Machine Gunner Asst.", "LAS"], //12
	["---- Heavy Weapons ----", ""], //13
	["Medium Machine Gunner", "MMG"], //14
	["Medium Machine Gunner Asst.", "MAS"], //15
	["Missile Specialist Anti-Tank", "SAT"], //16
	["Missile Specialist Anti-Tank Asst.", "AAT"], //17
	["Missile Specialist Anti-Air", "SAA"], //18
	["Missile Specialist Anti-Air Asst.", "AAA"], //19
	["---- Support ----", ""], //20
	["Marksman", "MAR"], //21
	["Sniper", "SNI"], //22
	["Spotter", "SPO"], //23
	["Explosive Specialist", "EOD"], //24
	["Engineer", "ENG"], //25
	["Pilot", "PIL"], //26
	["Forward Air Controller", "JTC"], //27
	["UAV Operator", "UAV"] //28
];


["put", ["DEFAULT", ["U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_3_F"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_B_CTRG_Soldier_F"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_B_HeliPilotCoveralls"]]] call keko_loadout_uniform;	
["put", ["SNI", ["U_B_T_FullGhillie_tna_F"]]] call keko_loadout_uniform;
["put", ["SPO", ["U_B_T_FullGhillie_tna_F"]]] call keko_loadout_uniform;	


["put", ["DEFAULT", ["V_TacVest_oli"]]] call keko_loadout_vest;
["put", ["LEA", ["V_Chestrig_oli"]]] call keko_loadout_vest;
["put", ["GRE", ["V_PlateCarrierIAGL_oli"]]] call keko_loadout_vest;
["put", ["PIL", ["V_TacVest_blk"]]] call keko_loadout_vest;
["put", ["SNI", ["V_PlateCarrier2_rgr_noflag_F"]]] call keko_loadout_vest;
["put", ["SPO", ["V_PlateCarrier2_rgr_noflag_F"]]] call keko_loadout_vest;


_primary_mag = "30Rnd_556x45_Stanag";
_primary_mag_tracer = "30Rnd_556x45_Stanag_Tracer_Red";
_primary_mag_marksman = "20Rnd_762x51_Mag";
_primary_mag_lmg = "150Rnd_556x45_Drum_Mag_F";
_primary_mag_mmg = "130Rnd_338_Mag";
["put", ["DEFAULT", [_primary_mag,_primary_mag_tracer]]] call keko_loadout_primary_mag;
["put", ["MAR", [_primary_mag_marksman]]] call keko_loadout_primary_mag;
["put", ["LMG", [_primary_mag_lmg]]] call keko_loadout_primary_mag;
["put", ["MMG", [_primary_mag_mmg]]] call keko_loadout_primary_mag;

["put", ["SNI", ["ACE_7Rnd_408_305gr_Mag"]]] call keko_loadout_primary_mag;
["put", ["SPO", ["20Rnd_762x51_Mag"]]] call keko_loadout_primary_mag;


_secondary_mag = "16Rnd_9x21_Mag";
["put", ["DEFAULT", [_secondary_mag]]] call keko_loadout_secondary_mag;


_primary_mag_grenadier = "1Rnd_HE_Grenade_shell";
_at_spec_mag = "Titan_AT";
_aa_spec_mag = "Titan_AA";
["put", ["GRE", [_primary_mag_grenadier]]] call keko_loadout_tertiary_mag;
["put", ["SAT", [_at_spec_mag]]] call keko_loadout_tertiary_mag;
["put", ["SAA", [_aa_spec_mag]]] call keko_loadout_tertiary_mag;


_grenade = "HandGrenade";
_smoke_white = "SmokeShell";
_smoke_green = "SmokeShellGreen";
["put", ["EXPLOSIVE", [_grenade]]] call keko_loadout_grenade;
["put", ["SMOKE_WHITE", [_smoke_white]]] call keko_loadout_grenade;
["put", ["SMOKE_GREEN", [_smoke_green]]] call keko_loadout_grenade;


_uniform_inventory = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_MapTools"],[1, "ACE_Flashlight_XL50"],[1, "ACE_IR_Strobe_Item"]];
_uniform_inventory pushBack [1, _secondary_mag];
_uniform_inventory pushBack [1, _smoke_white];
_uniform_inventory pushBack [1, _smoke_green];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;

["put", ["SNI", [[1,"ACE_ATragMX"],[10,"ACE_quikclot"],[1,"ACE_Flashlight_MX991"],[1,"ACE_IR_Strobe_Item"],[1,"ACE_Kestrel4500"],[1,"ACE_MapTools"],[1,"ACE_microDAGR"],[2,"ACE_morphine"],[3,"ACE_tourniquet"],[1,"ACE_surgicalKit"],[1,"ACE_RangeCard"],[2,"ACE_epinephrine"],[1,"ACE_salineIV"],[8,"ACE_fieldDressing"]]]] call keko_loadout_uniform_inventory;
["put", ["SPO", [[1,"ACE_ATragMX"],[10,"ACE_quikclot"],[1,"ACE_Flashlight_MX991"],[1,"ACE_IR_Strobe_Item"],[1,"ACE_Kestrel4500"],[1,"ACE_MapTools"],[1,"ACE_microDAGR"],[2,"ACE_morphine"],[3,"ACE_tourniquet"],[1,"ACE_surgicalKit"],[1,"ACE_RangeCard"],[2,"ACE_epinephrine"],[1,"ACE_salineIV"],[8,"ACE_fieldDressing"]]]] call keko_loadout_uniform_inventory;








["put", ["DEFAULT", [[4, _primary_mag],[4, _primary_mag_tracer],[1, _smoke_white],[3,_grenade]]]] call keko_loadout_vest_inventory;
["put", ["JTC", [[2, _primary_mag],[2,_primary_mag_tracer],[4,"UGL_FlareGreen_F"],[4,"1Rnd_SmokeRed_Grenade_shell"],[4,"1Rnd_SmokeBlue_Grenade_shell"],[2,"SmokeShellBlue"],[2,"SmokeShellGreen"],[2,"SmokeShellOrange"],[2,"SmokeShellPurple"],[2,"SmokeShellYellow"]]]] call keko_loadout_vest_inventory;

_vest_inventory_medic = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_medic pushBack [3, _primary_mag];
_vest_inventory_medic pushBack [3, _primary_mag_tracer];
_vest_inventory_medic pushBack [2, _smoke_white];
["put", ["MED", _vest_inventory_medic]] call keko_loadout_vest_inventory;

_vest_inventory_doctor = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_doctor pushBack [3, _primary_mag];
_vest_inventory_doctor pushBack [3, _primary_mag_tracer];
_vest_inventory_doctor pushBack [2, _smoke_white];
["put", ["DOC", _vest_inventory_doctor]] call keko_loadout_vest_inventory;

["put", ["MAR", [[4, _primary_mag_marksman],[1, _smoke_white],[2, _grenade],[4, _primary_mag_marksman]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[4, _primary_mag_lmg],[1, _smoke_white],[2, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, _primary_mag_mmg],[2, _grenade]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[2, _primary_mag],[2, _primary_mag_tracer],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, _secondary_mag],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;
["put", ["SNI", [[1,"SmokeShell"],[1,"SmokeShellGreen"],[8,"ACE_7Rnd_408_305gr_Mag"],[2,"11Rnd_45ACP_Mag"]]]] call keko_loadout_vest_inventory;
["put", ["SPO", [[1,"SmokeShell"],[1,"SmokeShellGreen"],[2,"11Rnd_45ACP_Mag"],[10,"ACE_30Rnd_65x47_Scenar_mag"],[1,"HandGrenade"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["H_HelmetB_TI_tna_F"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_PilotHelmetHeli_B"]]] call keko_loadout_helmet;
["put", ["SNI", ["H_HelmetSpecB_blk"]]] call keko_loadout_helmet;
["put", ["SPO", ["H_HelmetSpecB_blk"]]] call keko_loadout_helmet;

_lr_radio = "TFAR_rt1523g_black";
_backpack_med = "B_Kitbag_rgr";
_backpack_autorifle = "B_TacticalPack_rgr";
_backpack_engineer = "B_Carryall_oli";
_backpack_specialist = "B_FieldPack_oli";
["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", [_lr_radio]]] call keko_loadout_backpack;
["put", ["SER", [_lr_radio]]] call keko_loadout_backpack;
["put", ["SQL", [_lr_radio]]] call keko_loadout_backpack;
["put", ["JTC", [_lr_radio]]] call keko_loadout_backpack;
["put", ["MED", [_backpack_med]]] call keko_loadout_backpack;
["put", ["DOC", [_backpack_med]]] call keko_loadout_backpack;
["put", ["LMG", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["LAS", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["MMG", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["MAS", [_backpack_autorifle]]] call keko_loadout_backpack;
["put", ["GRE", ["B_AssaultPack_rgr"]]] call keko_loadout_backpack;
["put", ["ENG", [_backpack_engineer]]] call keko_loadout_backpack;
["put", ["EOD", [_backpack_engineer]]] call keko_loadout_backpack;
["put", ["SAT", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["AAT", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["SAA", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["AAA", [_backpack_specialist]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["SNI", ["B_AssaultPack_rgr"]]] call keko_loadout_backpack;
["put", ["SPO", ["B_Carryall_oli"]]] call keko_loadout_backpack;
["put", ["UAV", ["B_UAV_01_backpack_F"]]] call keko_loadout_backpack;


["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, _primary_mag_lmg]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, _primary_mag_mmg]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[10, _primary_mag_grenadier]]]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[1, _at_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["AAT", [[2, _at_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["SAA", [[1, _aa_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["AAA", [[2, _aa_spec_mag]]]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["SER", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["JTC", [[4,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"],[1,"adv_aceCPR_AED"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[6,"DemoCharge_Remote_Mag"],[2,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]]]] call keko_loadout_backpack_inventory;
["put", ["SNI", [[2,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;
["put", ["SPO", [[20,"ACE_elasticBandage"],[20,"ACE_quikclot"],[20,"ACE_fieldDressing"],[4,"ACE_CableTie"],[2,"ACE_DefusalKit"],[1,"ACE_EntrenchingTool"],[10,"ACE_epinephrine"],[5,"ACE_morphine"],[6,"ACE_salineIV"],[1,"ACE_SpottingScope"],[1,"ACE_Tripod"],[1,"ACE_wirecutter"],[2,"Laserbatteries"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["arifle_SPAR_01_blk_F","arifle_SPAR_01_khk_F"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_GL_khk_F"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["arifle_SPAR_03_khk_F"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["arifle_SPAR_02_khk_F"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["MMG_02_black_F"]]] call keko_loadout_primary_weapon;
["put", ["SNI", ["srifle_LRR_F"]]] call keko_loadout_primary_weapon;
["put", ["SPO", ["arifle_SPAR_03_khk_F"]]] call keko_loadout_primary_weapon;
["put", ["PIL", []]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", ["acc_pointer_IR","optic_ERCO_blk_F"]]] call keko_loadout_primary_items;
["put", ["MAR", ["acc_pointer_IR","optic_SOS","bipod_01_F_blk"]]] call keko_loadout_primary_items;
["put", ["LMG", ["acc_pointer_IR","bipod_01_F_khk","optic_ERCO_blk_F"]]] call keko_loadout_primary_items;
["put", ["MMG", ["acc_pointer_IR","bipod_01_F_blk"]]] call keko_loadout_primary_items;
["put", ["SNI", ["optic_LRPS"]]] call keko_loadout_primary_items;
["put", ["SPO", ["muzzle_snds_H","optic_ERCO_blk_F","bipod_01_F_blk"]]] call keko_loadout_primary_items;




["put", ["DEFAULT", ["hgun_P07_khk_F"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", ["muzzle_snds_L"]]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["launch_NLAW_F"]]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["launch_B_Titan_short_tna_F"]]] call keko_loadout_tertiary_weapon;
["put", ["SAA", ["launch_B_Titan_tna_F"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["SQL", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;
["put", ["LAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["MAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["AAT", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["AAA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["JTC", ["Laserdesignator_01_khk_F"]]] call keko_loadout_optics;
["put", ["SNI", ["Laserdesignator_01_khk_F"]]] call keko_loadout_optics;
["put", ["SPO", ["Laserdesignator_01_khk_F"]]] call keko_loadout_optics;


["put", ["DEFAULT", ["G_Balaclava_TI_tna_F","G_Balaclava_TI_G_tna_F"]]] call keko_loadout_goggles;
["put", ["PIL", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["B_UavTerminal"]]] call keko_loadout_linkable_items;