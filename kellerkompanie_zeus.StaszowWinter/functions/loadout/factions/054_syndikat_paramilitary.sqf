// Syndikat Paramilitary
keko_loadout_list = [
	["---- Leaders ----", ""], //0
	["Chief", "LEA"],	
	["Watcher (Team Leader)", "FTL"], 	
	["---- Bandits ----", ""], 
	["Dealer (Rifle)", "RIF"], 
	["Smuggler (UGL)", "GRE"], 
	["Guard (Machine Gun)", "LMG"], 
	["Hireling (Launcher)", "SAT"], 
	["---- Support ----", ""], 
	["Thug (Mines)", "EOD"], 
	["Cook (Mechanic)", "ENG"], 
	["Snatcher (Medic)", "DOC"], 
	["Pilot", "PIL"] 
];


["put", ["#PRIMARY_MAG_AKM", "30Rnd_762x39_Mag_F"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_AKS", "30Rnd_545x39_Mag_F"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_LMG", "200Rnd_556x45_Box_F"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_GRE", "30Rnd_762x39_Mag_F"]] call keko_loadout_keywords;	
["put", ["#SECONDARY_MAG", "10Rnd_9x21_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "1Rnd_HE_Grenade_shell"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "RPG7_F"]] call keko_loadout_keywords;
["put", ["#GRENADE", "MiniGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "launch_RPG7_F"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_I_C_Soldier_Para_1_F"]]] call keko_loadout_uniform;	
["put", ["LEA", ["U_I_C_Soldier_Para_2_F"]]] call keko_loadout_uniform;
	


_bandoliers = ["V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli"];
_chestrigs = ["V_TacChestrig_oli_F","V_TacChestrig_grn_F","V_TacChestrig_cbr_F"];
["put", ["DEFAULT", _chestrigs]] call keko_loadout_vest;
["put", ["LEA", _bandoliers]] call keko_loadout_vest;
["put", ["FTL", _chestrigs]] call keko_loadout_vest;
["put", ["GRE", _chestrigs]] call keko_loadout_vest;
["put", ["LMG", []]] call keko_loadout_vest;
["put", ["SAT", []]] call keko_loadout_vest;
["put", ["EOD", _bandoliers]] call keko_loadout_vest;
["put", ["ENG", _bandoliers]] call keko_loadout_vest;
["put", ["DOC", _chestrigs]] call keko_loadout_vest;
["put", ["PIL", _bandoliers]] call keko_loadout_vest;


["put", ["DEFAULT", ["#PRIMARY_MAG_AKM"]]] call keko_loadout_primary_mag;
["put", ["LEA", ["#PRIMARY_MAG_AKS"]]] call keko_loadout_primary_mag;
["put", ["FTL", ["#PRIMARY_MAG_AKM"]]] call keko_loadout_primary_mag;
["put", ["GRE", ["#PRIMARY_MAG_GRE"]]] call keko_loadout_primary_mag;
["put", ["LMG", ["#PRIMARY_MAG_LMG"]]] call keko_loadout_primary_mag;
["put", ["SAT", ["#PRIMARY_MAG_AKM"]]] call keko_loadout_primary_mag;
["put", ["EOD", ["#PRIMARY_MAG_AKS"]]] call keko_loadout_primary_mag;
["put", ["ENG", ["#PRIMARY_MAG_AKS"]]] call keko_loadout_primary_mag;
["put", ["DOC", ["#PRIMARY_MAG_AKS"]]] call keko_loadout_primary_mag;
["put", ["PIL", ["#PRIMARY_MAG_AKS"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;


["put", ["GRE", ["#GRENADIER_MAG"]]] call keko_loadout_tertiary_mag;
["put", ["SAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;



_uniform_inventory = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[2, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"]];
_uniform_inventory pushBack [1, "#SECONDARY_MAG"];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;









["put", ["DEFAULT", [[7,"#PRIMARY_MAG_AKM"],[4, "#GRENADE"]]]] call keko_loadout_vest_inventory;
_vest_inventory_doctor = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]];
_vest_inventory_doctor pushBack [4, "#PRIMARY_MAG_AKS"];
["put", ["DOC", _vest_inventory_doctor]] call keko_loadout_vest_inventory;
["put", ["LEA", [[7,"#PRIMARY_MAG_AKS"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["FTL", [[8,"#PRIMARY_MAG_AKM"],[4, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["GRE", [[7,"#PRIMARY_MAG_GRE"],[7, "#GRENADIER_MAG"],[3, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["EOD", [[6,"#PRIMARY_MAG_AKS"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["ENG", [[6,"#PRIMARY_MAG_AKS"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[6,"#PRIMARY_MAG_AKS"],[2, "#GRENADE"],[1,"ACE_MapTools"],[1,"ACE_microDAGR"]]]] call keko_loadout_vest_inventory;







["put", ["DEFAULT", ["H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_camo"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_Bandanna_khk_hs"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_Cap_marshal"]]] call keko_loadout_helmet;


_backpack = ["B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli"];
["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["DOC", _backpack]] call keko_loadout_backpack;
["put", ["LMG", _backpack]] call keko_loadout_backpack;
["put", ["ENG", _backpack]] call keko_loadout_backpack;
["put", ["EOD", _backpack]] call keko_loadout_backpack;
["put", ["SAT", _backpack]] call keko_loadout_backpack;



["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[60, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[6, "ACE_tourniquet"],[8,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["LMG", [[4, "#PRIMARY_MAG_LMG"],[3, "#GRENADE"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[4,"APERSTripMine_Wire_Mag"],[4,"APERSMine_Range_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"],[2,"ClaymoreDirectionalMine_Remote_Mag"],[1,"ACE_DeadManSwitch"]]]] call keko_loadout_backpack_inventory;
["put", ["SAT", [[2, "#AT_MAG"],[7, "#PRIMARY_MAG_AKM"],[2, "#GRENADE"]]]] call keko_loadout_backpack_inventory;



["put", ["DEFAULT", ["arifle_AKM_F"]]] call keko_loadout_primary_weapon;
["put", ["LEA", ["arifle_AKS_F"]]] call keko_loadout_primary_weapon;
["put", ["EOD", ["arifle_AKS_F"]]] call keko_loadout_primary_weapon;
["put", ["ENG", ["arifle_AKS_F"]]] call keko_loadout_primary_weapon;
["put", ["DOC", ["arifle_AKS_F"]]] call keko_loadout_primary_weapon;
["put", ["PIL", ["arifle_AKS_F"]]] call keko_loadout_primary_weapon;
["put", ["LMG", ["LMG_03_F"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["arifle_AK12_GL_F"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["hgun_Pistol_01_F"]]] call keko_loadout_secondary_weapon;

["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["SAT", ["#SAT_LAUNCHER"]]] call keko_loadout_tertiary_weapon;



["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;
["put", ["SAT", ["#AT_MAG"]]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Binocular"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;
["put", ["PIL", ["Binocular"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;


["put", ["DEFAULT", []]] call keko_loadout_linkable_items;