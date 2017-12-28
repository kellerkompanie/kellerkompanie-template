//Guerilla
keko_loadout_list = [
	["---- Führung ----", " "],
	["Leader", "LEA"],  
	["Group Leader", "SQL"],
	["Team Leader", "FTL"],

	["---- Medical ----", " "],
	["Doctor", "DOC"],
	["Paramedic", "MED"],

	["---- Plebs ----", " "],
	["Aid Worker", "AWL"],
	["Aid Worker (Shorts)", "AWS"],
	["Press", "PRE"],
	["Messenger", "MSG"],
	["Driver", "DRV"],
	["Refugee", "REF"],
	["Fisherman", "FSH"],

	["---- Worker ----", " "],
	["Utility Worker", "UTW"],
	["Construction Worker (Black)", "CWS"],
	["Construction Worker (Blue)", "CWB"],
	["Construction Worker (Red)", "CWR"],
	["Construction Worker (VRANA)", "CWV"],

	["---- Support ----", " "],	
	["EOD Expert", "EOD"],
	["Mechanic", "ENG"],
	["Pilot", "PIL"],
	["Drone Operator", "DOP"],
	["Drone Operator (Utility)", "UOP"],
	["Drone Operator (Medical)", "MOP"],
	["Drone Operator (Demining)", "EOP"],
	["Drone Operator (UGV)", "UGV"]
];


["put", ["DEFAULT", ["U_C_IDAP_Man_cargo_F","U_C_IDAP_Man_Jeans_F","U_C_IDAP_Man_Tee_F"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_C_IDAP_Man_casual_F"]]] call keko_loadout_uniform;
["put", ["SQL", ["U_C_IDAP_Man_cargo_F"]]] call keko_loadout_uniform;
["put", ["FTL", ["U_C_IDAP_Man_cargo_F"]]] call keko_loadout_uniform;
["put", ["AWL", ["U_C_IDAP_Man_cargo_F","U_C_IDAP_Man_Jeans_F","U_C_IDAP_Man_Tee_F"]]] call keko_loadout_uniform;
["put", ["AWS", ["U_C_IDAP_Man_shorts_F","U_C_IDAP_Man_TeeShorts_F"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_C_IDAP_Man_casual_F"]]] call keko_loadout_uniform;	
["put", ["EOD", ["U_C_IDAP_Man_casual_F"]]] call keko_loadout_uniform;	
["put", ["ENG", ["U_C_Mechanic_01_F"]]] call keko_loadout_uniform;	
["put", ["CWS", ["U_C_ConstructionCoverall_Black_F"]]] call keko_loadout_uniform;	
["put", ["CWB", ["U_C_ConstructionCoverall_Blue_F"]]] call keko_loadout_uniform;	
["put", ["CWR", ["U_C_ConstructionCoverall_Red_F"]]] call keko_loadout_uniform;	
["put", ["CWV", ["U_C_ConstructionCoverall_Vrana_F"]]] call keko_loadout_uniform;	
["put", ["DOC", ["U_Marshal","U_MU_PoloshirtPants2","U_MU_PoloshirtPants1"]]] call keko_loadout_uniform;
["put", ["MED", ["U_C_Paramedic_01_F"]]] call keko_loadout_uniform;
["put", ["PRE", ["U_C_Journalist"]]] call keko_loadout_uniform;
["put", ["MSG", ["U_C_Poor_1"]]] call keko_loadout_uniform;
["put", ["FSH", ["U_C_Poloshirt_blue"]]] call keko_loadout_uniform;
["put", ["UTW", ["U_C_ConstructionCoverall_Blue_F"]]] call keko_loadout_uniform;
["put", ["UOP", ["U_C_Man_casual_2_F"]]] call keko_loadout_uniform;
["put", ["MOP", ["U_C_Paramedic_01_F"]]] call keko_loadout_uniform;
["put", ["REF", ["U_BG_Guerilla1_2_F","U_MU_B_GuerillaGarment2_yellow","U_MU_B_GuerillaGarment2_skull","U_MU_B_GuerillaGarment2_orange","U_MU_B_GuerillaGarment2_redcamo","U_MU_B_GuerillaGarment2_grey","U_MU_B_GuerillaGarment2_brown","U_MU_B_GuerillaGarment2_blue","U_MU_B_GuerillaGarment2","U_MU_B_GuerillaGarment_yellow","U_MU_B_GuerillaGarment_skull","U_MU_B_GuerillaGarment_orange","U_MU_B_GuerillaGarment_redcamo","U_MU_B_GuerillaGarment_grey","U_MU_B_GuerillaGarment_brown","U_MU_B_GuerillaGarment_blue","U_C_Poor_1","U_BG_Guerilla1_1"]]] call keko_loadout_uniform;






["put", ["DEFAULT", [" "," "," "," "," "," "," ","V_Plain_medical_F","V_Pocketed_black_F","V_Safety_orange_F"]]] call keko_loadout_vest;
["put", ["DOC", ["V_LegStrapBag_black_F"]]] call keko_loadout_vest;
["put", ["MED", ["V_LegStrapBag_black_F"]]] call keko_loadout_vest;
["put", ["EOD", ["V_EOD_IDAP_blue_F"]]] call keko_loadout_vest;
["put", ["PRE", ["V_Press_F"]]] call keko_loadout_vest;
["put", ["MSG", ["V_LegStrapBag_coyote_F"]]] call keko_loadout_vest;
["put", ["FSH", ["V_Pocketed_coyote_F"]]] call keko_loadout_vest;
["put", ["UTW", ["V_Safety_yellow_F"]]] call keko_loadout_vest;
["put", ["ENG", ["V_LegStrapBag_coyote_F"]]] call keko_loadout_vest;
["put", ["REF", []]] call keko_loadout_vest;
["put", ["CWS", []]] call keko_loadout_vest;
["put", ["CWB", []]] call keko_loadout_vest;
["put", ["CWR", []]] call keko_loadout_vest;
["put", ["CWV", []]] call keko_loadout_vest;





["put", ["DEFAULT", []]] call keko_loadout_primary_mag;



["put", ["DEFAULT", []]] call keko_loadout_secondary_mag;



_uniform_inventory = [[10, "ACE_fieldDressing"],[1, "ACE_morphine"],[2, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"]];
["put", ["DEFAULT", _uniform_inventory]] call keko_loadout_uniform_inventory;
["put", ["REF", []]] call keko_loadout_uniform_inventory;




["put", ["DEFAULT", []]] call keko_loadout_vest_inventory;
["put", ["REF", []]] call keko_loadout_vest_inventory;

["put", ["MED", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;
["put", ["DOC", [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[1,"adv_aceCPR_AED"]]]] call keko_loadout_vest_inventory;

["put", ["PIL", [[1, "ACE_microDAGR"],[10, "ACE_quikclot"]]]] call keko_loadout_vest_inventory;




//"H_EarProtectors_black_F","H_EarProtectors_orange_F","H_EarProtectors_red_F","H_EarProtectors_white_F","H_EarProtectors_yellow_F"

["put", ["DEFAULT", [" "," "," "," "," "," "," ","H_Hat_Safari_sand_F","H_Cap_Black_IDAP_F","H_Cap_Orange_IDAP_F","H_Cap_White_IDAP_F","H_PASGT_basic_white_F"]]] call keko_loadout_helmet;
["put", ["SQL", ["H_Cap_Black_IDAP_F","H_Cap_Orange_IDAP_F","H_Cap_White_IDAP_F"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_Cap_Black_IDAP_F","H_Cap_Orange_IDAP_F","H_Cap_White_IDAP_F"]]] call keko_loadout_helmet;
["put", ["PIL", ["H_HeadSet_black_F","H_HeadSet_orange_F","H_HeadSet_red_F","H_HeadSet_white_F","H_HeadSet_yellow_F","H_Cap_marshal","H_Cap_headphones"]]] call keko_loadout_helmet;
["put", ["PRE", ["H_PASGT_basic_blue_press_F","H_PASGT_neckprot_blue_press_F"]]] call keko_loadout_helmet;
["put", ["EOD", ["H_PASGT_basic_white_F"]]] call keko_loadout_helmet;
["put", ["MSG", ["H_Cap_tan"]]] call keko_loadout_helmet;

_worker_helmets = ["H_Construction_basic_black_F","H_Construction_earprot_black_F","H_Construction_headset_black_F","H_Construction_basic_orange_F","H_Construction_earprot_orange_F","H_Construction_headset_orange_F","H_Construction_basic_red_F","H_Construction_earprot_red_F","H_Construction_headset_red_F","H_Construction_basic_white_F","H_Construction_earprot_white_F","H_Construction_headset_white_F","H_Construction_basic_yellow_F","H_Construction_earprot_yellow_F","H_Construction_headset_yellow_F"];
["put", ["CWS", _worker_helmets]] call keko_loadout_helmet;
["put", ["CWB", _worker_helmets]] call keko_loadout_helmet;
["put", ["CWR", _worker_helmets]] call keko_loadout_helmet;
["put", ["CWV", ["H_Construction_basic_vrana_F","H_Construction_earprot_vrana_F","H_Construction_headset_vrana_F"]]] call keko_loadout_helmet;
["put", ["ENG", _worker_helmets]] call keko_loadout_helmet;

["put", ["REF", [" "," "," ","H_HeadBandage_clean_F","H_HeadBandage_stained_F","H_HeadBandage_bloody_F"]]] call keko_loadout_helmet;
["put", ["FSH", ["H_Booniehat_tan"]]] call keko_loadout_helmet;
["put", ["UTW", [" "," "," "," ","H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk","H_Bandanna_sgg","H_Bandanna_sand"]]] call keko_loadout_helmet;
["put", ["DOC", []]] call keko_loadout_helmet;
["put", ["MED", []]] call keko_loadout_helmet;





["put", ["DEFAULT", [" "," "," "," ","B_Messenger_Black_F","B_Messenger_Coyote_F","B_Messenger_Gray_F","B_Messenger_IDAP_F"]]] call keko_loadout_backpack;
["put", ["MED", ["B_Messenger_Black_F","B_Messenger_Gray_F"]]] call keko_loadout_backpack;
["put", ["DOC", ["B_Messenger_Black_F","B_Messenger_Gray_F","B_Messenger_IDAP_F"]]] call keko_loadout_backpack;
["put", ["ENG", ["B_Messenger_Coyote_F"]]] call keko_loadout_backpack;
["put", ["EOD", ["B_LegStrapBag_coyote_F"]]] call keko_loadout_backpack;
["put", ["PIL", ["ACE_NonSteerableParachute"]]] call keko_loadout_backpack;
["put", ["MSG", ["B_Messenger_Coyote_F"]]] call keko_loadout_backpack;
["put", ["UTW", ["B_LegStrapBag_black_F"]]] call keko_loadout_backpack;
["put", ["DOP", ["C_IDAP_UAV_01_backpack_F"]]] call keko_loadout_backpack;
["put", ["UOP", ["C_IDAP_UAV_06_backpack_F"]]] call keko_loadout_backpack;
["put", ["MOP", ["C_IDAP_UAV_06_medical_backpack_F"]]] call keko_loadout_backpack;
["put", ["EOP", ["C_IDAP_UAV_06_antimine_backpack_F"]]] call keko_loadout_backpack;
["put", ["CWS", []]] call keko_loadout_backpack;
["put", ["CWB", []]] call keko_loadout_backpack;
["put", ["CWR", []]] call keko_loadout_backpack;
["put", ["CWV", []]] call keko_loadout_backpack;
["put", ["REF", []]] call keko_loadout_backpack;
["put", ["PRE", [" "," "," "," "," ","B_Messenger_Black_F","B_Messenger_Gray_F"]]] call keko_loadout_backpack;





["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["LEA", [[6,"UGL_FlareWhite_F"],[3,"UGL_FlareGreen_F"],[3,"UGL_FlareRed_F"]]]] call keko_loadout_backpack_inventory;
["put", ["SQL", [[6,"UGL_FlareWhite_F"],[3,"UGL_FlareGreen_F"],[3,"UGL_FlareRed_F"]]]] call keko_loadout_backpack_inventory;
["put", ["MED", [[30, "ACE_elasticBandage"],[30, "ACE_fieldDressing"],[4, "ACE_salineIV_500"],[2, "ACE_salineIV"],[6,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["DOC", [[30, "ACE_elasticBandage"],[30, "ACE_fieldDressing"],[4, "ACE_salineIV_500"],[2, "ACE_salineIV"],[4, "ACE_tourniquet"],[6,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["ENG", [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]]]] call keko_loadout_backpack_inventory;
["put", ["EOD", [[1,"ACE_DefusalKit"],[1,"ACE_Clacker"],[1,"MineDetector"]]]] call keko_loadout_backpack_inventory;




["put", ["DEFAULT", []]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", []]] call keko_loadout_secondary_weapon;
["put", ["EOD", ["ACE_VMH3","ACE_VMM3"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["Binocular"]]] call keko_loadout_optics;
["put", ["SQL", ["Binocular"]]] call keko_loadout_optics;



["put", ["DEFAULT", []]] call keko_loadout_goggles;
["put", ["LEA", ["G_WirelessEarpiece_F"]]] call keko_loadout_goggles;
["put", ["SQL", ["G_WirelessEarpiece_F"]]] call keko_loadout_goggles;
["put", ["PRE", [" ","G_Shades_Blue"]]] call keko_loadout_goggles;
["put", ["EOD", [" ","G_EyeProtectors_F"]]] call keko_loadout_goggles;
["put", ["MSG", [" "," ","G_Shades_Blue","G_Shades_Red","G_Shades_Green","G_Aviator","G_Spectacles"]]] call keko_loadout_goggles;
["put", ["CWS", [" ","G_Respirator_blue_F", "G_Respirator_white_F", "G_Respirator_yellow_F","G_EyeProtectors_F","G_EyeProtectors_Earpiece_F"]]] call keko_loadout_goggles;
["put", ["CWB", [" ","G_Respirator_blue_F", "G_Respirator_white_F", "G_Respirator_yellow_F","G_EyeProtectors_F","G_EyeProtectors_Earpiece_F"]]] call keko_loadout_goggles;
["put", ["CWR", [" ","G_Respirator_blue_F", "G_Respirator_white_F", "G_Respirator_yellow_F","G_EyeProtectors_F","G_EyeProtectors_Earpiece_F"]]] call keko_loadout_goggles;
["put", ["CWV", [" ","G_Respirator_blue_F", "G_Respirator_white_F", "G_Respirator_yellow_F","G_EyeProtectors_F","G_EyeProtectors_Earpiece_F"]]] call keko_loadout_goggles;
["put", ["DOC", [" ", "G_Respirator_white_F"]]] call keko_loadout_goggles;
["put", ["MED", [" ", "G_Respirator_white_F"]]] call keko_loadout_goggles;
["put", ["FSH", [" "," ","G_Shades_Blue","G_Shades_Red","G_Shades_Green","G_Aviator","G_Spectacles"]]] call keko_loadout_goggles;
["put", ["UTW", [" "," ","G_Shades_Blue","G_Shades_Red","G_Shades_Green","G_Aviator","G_Spectacles"]]] call keko_loadout_goggles;
["put", ["ENG", [" "," ","G_Shades_Blue","G_Shades_Red","G_Shades_Green","G_Aviator","G_Spectacles"]]] call keko_loadout_goggles;





["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;
["put", ["DOC", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;
["put", ["ENG", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;
["put", ["EOD", [["ACE_isEngineer", 2, true]]]] call keko_loadout_attributes;



["put", ["DEFAULT", []]] call keko_loadout_linkable_items;
["put", ["DOP", ["C_UavTerminal"]]] call keko_loadout_linkable_items;
["put", ["UOP", ["C_UavTerminal"]]] call keko_loadout_linkable_items;
["put", ["MOP", ["C_UavTerminal"]]] call keko_loadout_linkable_items;
["put", ["EOP", ["C_UavTerminal"]]] call keko_loadout_linkable_items;
["put", ["UGV", ["C_UavTerminal"]]] call keko_loadout_linkable_items;