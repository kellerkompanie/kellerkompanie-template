//NATO
keko_loadout_list = [
	["---- Polizei ----", ""],
	["Einsatzleiter", "LEA"], 
	["Stellvertreter", "SER"], 
	["Arzt", "DOC"], 
	["Gruppenführer", "SQL"], 
	["Teamführer", "FTL"], 
	["Sanitäter", "MED"], 
	["Polizist", "RIF"], 
	["---- Support ----", ""], 
	["Marksman", "MAR"],
	["Explosive Specialist", "EOD"], 
	["Engineer", "ENG"], 
	["Pilot", "PIL"], 
	["UAV Operator", "UAV"] 
];


["put", ["#PRIMARY_MAG", "30Rnd_9x21_Mag_SMG_02"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_MARKSMAN", "20Rnd_650x39_Cased_Mag_F"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "16Rnd_9x21_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADE", "ACE_M84"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_black"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_MU_Kitbag_blk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_MU_Carryall_blk"]] call keko_loadout_keywords;


["put", ["DEFAULT", ["U_B_GEN_Soldier_F"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_B_GEN_Commander_F"]]] call keko_loadout_uniform;
["put", ["SER", ["U_B_GEN_Commander_F"]]] call keko_loadout_uniform;
["put", ["SQL", ["U_B_GEN_Commander_F"]]] call keko_loadout_uniform;	


["put", ["DEFAULT", ["V_TacVest_gen_F"]]] call keko_loadout_vest;



["put", ["DEFAULT", ["#PRIMARY_MAG"]]] call keko_loadout_primary_mag;
["put", ["MAR", ["#PRIMARY_MAG_MARKSMAN"]]] call keko_loadout_primary_mag;



["put", ["DEFAULT", ["#SECONDARY_MAG"]]] call keko_loadout_secondary_mag;



["put", ["DEFAULT", [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_MapTools"],[1, "ACE_Flashlight_XL50"],[1, "ACE_IR_Strobe_Item"],[1, "#SECONDARY_MAG"],[1, "#SMOKE_WHITE"],[1, "#SMOKE_GREEN"]]]] call keko_loadout_uniform_inventory;









["put", ["DEFAULT", [[8, "#PRIMARY_MAG"],[1, "#SMOKE_WHITE"],[3,"#GRENADE"]]]] call keko_loadout_vest_inventory;

["put", ["MED", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[6, "#PRIMARY_MAG"],[2, "#SMOKE_WHITE"]]]] call keko_loadout_vest_inventory;
["put", ["DOC", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[6, "#PRIMARY_MAG"],[2, "#SMOKE_WHITE"]]]] call keko_loadout_vest_inventory;

["put", ["MAR", [[5, "#PRIMARY_MAG_MARKSMAN"],[1, "#SMOKE_WHITE"],[2, "#GRENADE"],[5, "#PRIMARY_MAG_MARKSMAN"]]]] call keko_loadout_vest_inventory;
["put", ["UAV", [[2,"ACE_UAVBattery"],[4, "#PRIMARY_MAG"],[1,"ACE_HuntIR_monitor"],[8,"ACE_HuntIR_M203"]]]] call keko_loadout_vest_inventory;
["put", ["PIL", [[2, "#SECONDARY_MAG"],[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", ["H_MilCap_gen_F","H_Cap_police"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_Beret_gen_F"]]] call keko_loadout_helmet;
["put", ["SER", ["H_MilCap_gen_F"]]] call keko_loadout_helmet;
["put", ["SQL", ["H_MilCap_gen_F"]]] call keko_loadout_helmet;
["put", ["FTL", ["H_MilCap_gen_F"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_PilotHelmetHeli_B"]]] call keko_loadout_helmet;



["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SER", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SQL", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["MED", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["DOC", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["ENG", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["EOD", ["#BACKPACK_ENGINEER"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["UAV", ["B_UAV_01_backpack_F"]]] call keko_loadout_backpack;


["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["SER", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[1, "ACE_HuntIR_monitor"],[5, "ACE_HuntIR_M203"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"],[1,"adv_aceCPR_AED"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[6,"DemoCharge_Remote_Mag"],[2,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", ["SMG_05_F"]]] call keko_loadout_primary_weapon;
["put", ["MAR", ["srifle_DMR_07_blk_F"]]] call keko_loadout_primary_weapon;



["put", ["DEFAULT", ["optic_Holosight_blk_F"]]] call keko_loadout_primary_items;
["put", ["MAR", ["optic_AMS"]]] call keko_loadout_primary_items;


["put", ["DEFAULT", ["hgun_Rook40_F"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["SQL", ["Rangefinder"]]] call keko_loadout_optics;
["put", ["FTL", ["Binocular"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;

["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["UAV", ["B_UavTerminal"]]] call keko_loadout_linkable_items;