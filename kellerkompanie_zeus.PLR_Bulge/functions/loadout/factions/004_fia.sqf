//Guerilla
keko_loadout_list = [
	["---- Führung ----", ""], //0
	["Leader", "LEA"], //1
	["Doctor", "DOC"], //3
	["Group Leader", "SQL"], //4
	["Team Leader", "FTL"], //5
	["Medic", "MED"], //6
	["---- Plebs ----", ""], //7
	["Rifleman", "RIF"], //8
	["Rifleman AT", "RAT"],
	["Grenadier", "GRE"], //10
	["Light Machine Gunner", "LMG"], //11
	["Light Machine Gunner Asst.", "LAS"], //12
	["---- Heavy Weapons ----", ""], //13
	["Medium Machine Gunner", "MMG"], //14
	["Medium Machine Gunner Asst.", "MAS"], //15
	["---- Support ----", ""], //20
	["Marksman", "MAR"], //21
	["Explosive Specialist", "EOD"], //24
	["Engineer", "ENG"], //25
	["Pilot", "PIL"] //26
];


["put", ["#PRIMARY_MAG", "30Rnd_556x45_Stanag"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "30Rnd_556x45_Stanag_Tracer_Red"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "20Rnd_762x51_Mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "20Rnd_762x51_Mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "200Rnd_65x39_cased_Box_Tracer"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "130Rnd_338_Mag"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "9Rnd_45ACP_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "1Rnd_HE_Grenade_shell"]] call keko_loadout_keywords;
["put", ["#RAT_MAG", "RPG32_F"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "Titan_AT"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "Titan_AA"]] call keko_loadout_keywords;
["put", ["#GRENADE", "HandGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_Kitbag_rgr"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_TacticalPack_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_Carryall_oli"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_FieldPack_oli"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "launch_NLAW_F"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "launch_I_Titan_short_F"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "launch_I_Titan_F"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_3","U_IG_Guerilla2_2","U_IG_Guerilla3_1","U_IG_Guerrilla_6_1"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_IG_leader"]]] call keko_loadout_uniform;	


["put", ["DEFAULT", ["V_Chestrig_oli","V_BandollierB_oli","V_Chestrig_blk","V_TacVest_blk","V_BandollierB_blk","V_BandollierB_khk"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG","#PRIMARY_MAG_TRACER"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;
["put", ["MMG", ["#PRIMARY_MAG_MMG"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;



["put", ["GRE", ["#GRENADIER_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["RAT", ["#RAT_MAG"]]] call keko_loadout_tertiary_mag;



_uniform_inventory = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[2, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"],[1, "#SECONDARY_MAG"],[1, "#SMOKE_WHITE"],[1, "#SMOKE_GREEN"]];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;









["put", ["DEFAULT", [[3, "#PRIMARY_MAG"],[3, "#PRIMARY_MAG_TRACER"],[1, "#SMOKE_WHITE"],[2,"#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MED", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[2, "#SMOKE_WHITE"]]]] call keko_loadout_vest_inventory;
["put", ["DOC", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[2, "#PRIMARY_MAG"],[2, "#PRIMARY_MAG_TRACER"],[2, "#SMOKE_WHITE"]]]] call keko_loadout_vest_inventory;
["put", ["MAR", [[3, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[3, "#PRIMARY_MAG_MARKSMAN"]]]] call keko_loadout_vest_inventory;
["put", ["LMG", [[3, "#PRIMARY_MAG_LMG"],[1, "#SMOKE_WHITE"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MMG", [[2, "#PRIMARY_MAG_MMG"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["H_Shemag_olive","H_Booniehat_khk","H_Bandanna_khk","H_Cap_oli","H_Watchcap_camo","H_Watchcap_blk"]]] call keko_loadout_helmet;



["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SQL", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["MED", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["DOC", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["LMG", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["LAS", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["MMG", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["MAS", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;
["put", ["GRE", ["B_AssaultPack_rgr"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["RAT", ["#BACKPACK_AUTORIFLE"]]] call keko_loadout_backpack;


["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[2, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["LAS", [[4, "#PRIMARY_MAG_LMG"]]]] call keko_loadout_backpack_inventory;
["put", ["MMG", []]] call keko_loadout_backpack_inventory;
["put", ["MAS", [[3, "#PRIMARY_MAG_MMG"]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[6, "#GRENADIER_MAG"],[6,"UGL_FlareWhite_F"]]]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[6,"UGL_FlareWhite_F"],[3,"UGL_FlareGreen_F"],[3,"UGL_FlareRed_F"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[6,"UGL_FlareWhite_F"],[3,"UGL_FlareGreen_F"],[3,"UGL_FlareRed_F"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[40, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[4, "ACE_salineIV_500"],[2, "ACE_salineIV"],[6,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[40, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[4, "ACE_salineIV_500"],[2, "ACE_salineIV"],[4, "ACE_tourniquet"],[6,"adv_aceSplint_splint"],[1,"adv_aceCPR_AED"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[4,"DemoCharge_Remote_Mag"],[1,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["arifle_Mk20_F","arifle_TRG21_F"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["arifle_Mk20_GL_F","arifle_TRG21_GL_F"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["srifle_DMR_06_olive_F"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["LMG_Mk200_F"]]] call keko_loadout_primary_weapon;
["put", ["MMG", ["MMG_02_black_F"]]] call keko_loadout_primary_weapon;
["put", ["LEA", ["arifle_Mk20C_F"]]] call keko_loadout_primary_weapon;
["put", ["MED", ["arifle_Mk20C_F"]]] call keko_loadout_primary_weapon;
["put", ["DOC", ["arifle_Mk20C_F"]]] call keko_loadout_primary_weapon;



["put", ["DEFAULT", ["acc_flashlight","optic_ACO_grn"]]] call keko_loadout_primary_items;
["put", ["MAR", ["acc_flashlight","optic_KHS_blk"]]] call keko_loadout_primary_items;
["put", ["LMG", ["acc_flashlight","bipod_03_F_blk"]]] call keko_loadout_primary_items;
["put", ["MMG", ["acc_flashlight","bipod_01_F_snd"]]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["hgun_ACPC2_F"]]] call keko_loadout_secondary_weapon;

["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RAT", ["launch_RPG32_F"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Binocular"]]] call keko_loadout_optics;
["put", ["SQL", ["Binocular"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;
["put", ["LAS", ["Binocular"]]] call keko_loadout_optics;
["put", ["MAS", ["Binocular"]]] call keko_loadout_optics;


["put", ["DEFAULT", ["G_Shades_Black","G_Shades_Blue","G_Sport_Checkered"]]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;