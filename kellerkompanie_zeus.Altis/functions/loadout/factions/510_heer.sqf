// Armia Krajowa (Partyzanci)
keko_loadout_list = [
	["---- Heer ----", ""],	
	["Gruppenführer (MP40)", "GMP"],	
	["Gruppenführer (STG44)", "GST"],
	["Gruppenführer Asst. (MP40)", "GAS"],
	["Truppführer (MP40)", "UMP"],
	["Funker", "FUN"],
	["Sanitäter", "SAN"],	
	["----------------", ""],
	["Schütze", "RK9"],
	["Schütze (G43)", "RG4"],
	["Schütze (MP40 + PZF)", "RPF"],
	["Schütze (MP40)", "RMP"],
	["Munitionsträger", "MUN"],
	["Grenadier", "GRE"],
	["MG Schütze (MG34)", "MG3"],
	["MG Schütze (MG42)", "MG4"],
	//["MG Asst.", "AST"],
	["MG Asst.", "ASS"]
];


["put", ["#PRIMARY_MAG_K98", "fow_5Rnd_792x57"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_STG44", "fow_30Rnd_792x33"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_MP40", "fow_32Rnd_9x19_mp40"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_MG34", "fow_50Rnd_792x57"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_MG42", "fow_50Rnd_792x57"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_G43", "fow_10nd_792x57"]] call keko_loadout_keywords;	 

["put", ["#WEAPON_K98", "fow_w_k98"]] call keko_loadout_keywords;	
["put", ["#WEAPON_STG44", "fow_w_stg44"]] call keko_loadout_keywords;	
["put", ["#WEAPON_MP40", "fow_w_mp40"]] call keko_loadout_keywords;	
["put", ["#WEAPON_MG34", "fow_w_mg34"]] call keko_loadout_keywords;	
["put", ["#WEAPON_MG42", "fow_w_mg42"]] call keko_loadout_keywords;	
["put", ["#WEAPON_G43", "fow_w_g43"]] call keko_loadout_keywords;	

["put", ["#WEAPON_P08", "fow_w_p08"]] call keko_loadout_keywords;
["put", ["#WEAPON_P38", "LIB_P38"]] call keko_loadout_keywords;

["put", ["#SECONDARY_MAG_P08", "fow_8Rnd_9x19"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG_P38", "lib_8Rnd_9x19"]] call keko_loadout_keywords;

["put", ["#GRENADE", "fow_e_m24"]] call keko_loadout_keywords;
["put", ["#SMOKE", "fow_e_nb39b"]] call keko_loadout_keywords;

["put", ["#BACKPACK_RADIO", "fow_b_torn_radio"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "fow_b_tornister_medic"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MG", "fow_b_ammoboxes_mg34_42"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MG_GURT", "fow_b_heer_ammo_belt"]] call keko_loadout_keywords; 
["put", ["#BACKPACK_MUN", "fow_b_ammoboxes"]] call keko_loadout_keywords;
["put", ["#BACKPACK_GRE", "fow_b_grenadebag"]] call keko_loadout_keywords;
["put", ["#BACKPACK_FRAME", "fow_b_heer_aframe"]] call keko_loadout_keywords;


["put", ["DEFAULT", []]] call keko_loadout_uniform;
["put", ["AST", ["fow_u_ger_m43_01_frag_private"]]] call keko_loadout_uniform;
["put", ["ASS", ["fow_u_ger_m43_01_frag_private"]]] call keko_loadout_uniform;
["put", ["GMP", ["fow_u_ger_m43_02_corporal"]]] call keko_loadout_uniform;
["put", ["GST", ["fow_u_ger_m43_01_corporal"]]] call keko_loadout_uniform;
["put", ["GAS", ["fow_u_ger_m43_01_private"]]] call keko_loadout_uniform;
["put", ["MG3", ["fow_u_ger_m43_02_lance_corporal"]]] call keko_loadout_uniform;
["put", ["MG4", ["fow_u_ger_m43_02_lance_corporal"]]] call keko_loadout_uniform;
["put", ["SAN", ["fow_u_ger_m43_01_private"]]] call keko_loadout_uniform;
["put", ["UMP", ["fow_u_ger_m43_01_corporal"]]] call keko_loadout_uniform;
["put", ["FUN", ["fow_u_ger_m43_01_private"]]] call keko_loadout_uniform;
["put", ["RK9", ["fow_u_ger_m43_01_private"]]] call keko_loadout_uniform;
["put", ["RG4", ["fow_u_ger_m43_01_private"]]] call keko_loadout_uniform;
["put", ["RPF", ["fow_u_ger_m43_01_frag_private"]]] call keko_loadout_uniform;
["put", ["RMP", ["fow_u_ger_m43_01_frag_private"]]] call keko_loadout_uniform;
["put", ["MUN", ["fow_u_ger_m43_01_frag_private"]]] call keko_loadout_uniform;
["put", ["GRE", ["fow_u_ger_m43_01_private"]]] call keko_loadout_uniform;


["put", ["DEFAULT", []]] call keko_loadout_vest;
["put", ["AST", ["fow_v_heer_k98"]]] call keko_loadout_vest;
["put", ["ASS", ["fow_v_heer_k98_ass"]]] call keko_loadout_vest;
["put", ["GMP", ["fow_v_heer_mp40"]]] call keko_loadout_vest;
["put", ["GST", ["fow_v_heer_mp44"]]] call keko_loadout_vest;
["put", ["GAS", ["fow_v_heer_mp40"]]] call keko_loadout_vest;
["put", ["MG3", ["fow_v_heer_mg"]]] call keko_loadout_vest;
["put", ["MG4", ["fow_v_heer_mg"]]] call keko_loadout_vest;
["put", ["SAN", ["fow_v_heer_k98"]]] call keko_loadout_vest;
["put", ["UMP", ["fow_v_heer_mp40_nco"]]] call keko_loadout_vest;
["put", ["FUN", ["fow_v_heer_k98_light"]]] call keko_loadout_vest;
["put", ["RK9", ["fow_v_heer_k98"]]] call keko_loadout_vest;
["put", ["RG4", ["fow_v_heer_g43"]]] call keko_loadout_vest;
["put", ["RPF", ["fow_v_heer_mp40"]]] call keko_loadout_vest;
["put", ["RMP", ["fow_v_heer_mp40"]]] call keko_loadout_vest;
["put", ["MUN", ["fow_v_heer_k98"]]] call keko_loadout_vest;
["put", ["GRE", ["fow_v_heer_k98"]]] call keko_loadout_vest;


["put", ["DEFAULT", []]] call keko_loadout_primary_mag;
["put", ["AST", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;
["put", ["ASS", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;
["put", ["GMP", ["#PRIMARY_MAG_MP40"]]] call keko_loadout_primary_mag;
["put", ["GST", ["#PRIMARY_MAG_STG44"]]] call keko_loadout_primary_mag;
["put", ["GAS", ["#PRIMARY_MAG_MP40"]]] call keko_loadout_primary_mag;
["put", ["MG3", ["#PRIMARY_MAG_MG34"]]] call keko_loadout_primary_mag;
["put", ["MG4", ["#PRIMARY_MAG_MG42"]]] call keko_loadout_primary_mag;
["put", ["SAN", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;
["put", ["UMP", ["#PRIMARY_MAG_MP40"]]] call keko_loadout_primary_mag;
["put", ["FUN", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;
["put", ["RK9", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;
["put", ["RG4", ["#PRIMARY_MAG_G43"]]] call keko_loadout_primary_mag;
["put", ["RPF", ["#PRIMARY_MAG_MP40"]]] call keko_loadout_primary_mag;
["put", ["RMP", ["#PRIMARY_MAG_MP40"]]] call keko_loadout_primary_mag;
["put", ["MUN", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;
["put", ["GRE", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;


["put", ["DEFAULT", []]] call keko_loadout_secondary_mag;
["put", ["GMP", ["#SECONDARY_MAG_P08"]]] call keko_loadout_secondary_mag;
["put", ["GST", ["#SECONDARY_MAG_P08"]]] call keko_loadout_secondary_mag;
["put", ["MG3", ["#SECONDARY_MAG_P38"]]] call keko_loadout_secondary_mag;
["put", ["MG4", ["#SECONDARY_MAG_P38"]]] call keko_loadout_secondary_mag;


["put", ["DEFAULT", [[16, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"]]]] call keko_loadout_uniform_inventory;
["put", ["GMP", [[9, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"],[1, "ACE_MapTools"],[1, "#SECONDARY_MAG_P08"]]]] call keko_loadout_uniform_inventory;
["put", ["GST", [[9, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"],[1, "ACE_MapTools"],[1, "#SECONDARY_MAG_P08"]]]] call keko_loadout_uniform_inventory;
["put", ["GAS", [[14, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"],[1, "ACE_MapTools"]]]] call keko_loadout_uniform_inventory;
["put", ["UMP", [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_Flashlight_XL50"],[1, "ACE_MapTools"]]]] call keko_loadout_uniform_inventory;
["put", ["MG3", [[14, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "#SECONDARY_MAG_P38"]]]] call keko_loadout_uniform_inventory;
["put", ["MG4", [[14, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "#SECONDARY_MAG_P38"]]]] call keko_loadout_uniform_inventory;



["put", ["DEFAULT", []]] call keko_loadout_vest_inventory;
["put", ["AST", [[10, "#PRIMARY_MAG_K98"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["ASS", [[10, "#PRIMARY_MAG_K98"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["GMP", [[5, "#PRIMARY_MAG_MP40"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["GST", [[5, "#PRIMARY_MAG_STG44"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["GAS", [[5, "#PRIMARY_MAG_MP40"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MG3", [[5, "#PRIMARY_MAG_MG34"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MG4", [[5, "#PRIMARY_MAG_MG42"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["SAN", [[8, "ACE_epinephrine"],[8, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[4, "#PRIMARY_MAG_K98"],[4,"adv_aceSplint_splint"]]]] call keko_loadout_vest_inventory;
["put", ["UMP", [[5, "#PRIMARY_MAG_MP40"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["FUN", [[10, "#PRIMARY_MAG_K98"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["RK9", [[10, "#PRIMARY_MAG_K98"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["RG4", [[6, "#PRIMARY_MAG_G43"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["RPF", [[5, "#PRIMARY_MAG_MP40"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["RMP", [[5, "#PRIMARY_MAG_MP40"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MUN", [[10, "#PRIMARY_MAG_K98"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["GRE", [[10, "#PRIMARY_MAG_K98"],[1, "#SMOKE"],[2, "#GRENADE"]]]] call keko_loadout_vest_inventory;



["put", ["DEFAULT", ["fow_h_ger_m40_heer_01","fow_h_ger_m40_heer_02"]]] call keko_loadout_helmet;


["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["FUN", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["SAN", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["MG3", ["#BACKPACK_MG_GURT"]]] call keko_loadout_backpack;
["put", ["MG4", ["#BACKPACK_MG_GURT"]]] call keko_loadout_backpack;
["put", ["AST", ["#BACKPACK_MG"]]] call keko_loadout_backpack;
["put", ["ASS", ["#BACKPACK_MG"]]] call keko_loadout_backpack;
["put", ["MUN", ["#BACKPACK_MUN"]]] call keko_loadout_backpack;
["put", ["GRE", ["#BACKPACK_GRE"]]] call keko_loadout_backpack;
["put", ["RPF", ["#BACKPACK_FRAME"]]] call keko_loadout_backpack;



["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["FUN", []]] call keko_loadout_backpack_inventory;
["put", ["SAN", [[40, "ACE_elasticBandage"],[6,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["MG3", [[1, "#PRIMARY_MAG_MG34"]]]] call keko_loadout_backpack_inventory;
["put", ["MG4", [[1, "#PRIMARY_MAG_MG42"]]]] call keko_loadout_backpack_inventory;
["put", ["AST", [[2, "#PRIMARY_MAG_MG34"]]]] call keko_loadout_backpack_inventory;
["put", ["ASS", [[2, "#PRIMARY_MAG_MG34"]]]] call keko_loadout_backpack_inventory;
["put", ["MUN", [[8, "#PRIMARY_MAG_K98"],[4, "#PRIMARY_MAG_G43"],[5, "#PRIMARY_MAG_MP40"]]]] call keko_loadout_backpack_inventory;
["put", ["GRE", [[2, "fow_e_m24_at"],[4, "fow_e_m24"],[1, "fow_e_nb39b"]]]] call keko_loadout_backpack_inventory;



["put", ["DEFAULT", []]] call keko_loadout_primary_weapon;
["put", ["AST", ["#WEAPON_K98"]]] call keko_loadout_primary_weapon;
["put", ["ASS", ["#WEAPON_K98"]]] call keko_loadout_primary_weapon;
["put", ["GMP", ["#WEAPON_MP40"]]] call keko_loadout_primary_weapon;
["put", ["GST", ["#WEAPON_STG44"]]] call keko_loadout_primary_weapon;
["put", ["GAS", ["#WEAPON_MP40"]]] call keko_loadout_primary_weapon;
["put", ["MG3", ["#WEAPON_MG34"]]] call keko_loadout_primary_weapon;
["put", ["MG4", ["#WEAPON_MG42"]]] call keko_loadout_primary_weapon;
["put", ["SAN", ["#WEAPON_K98"]]] call keko_loadout_primary_weapon;
["put", ["UMP", ["#WEAPON_MP40"]]] call keko_loadout_primary_weapon;
["put", ["FUN", ["#WEAPON_K98"]]] call keko_loadout_primary_weapon;
["put", ["RK9", ["#WEAPON_K98"]]] call keko_loadout_primary_weapon;
["put", ["RG4", ["#WEAPON_G43"]]] call keko_loadout_primary_weapon;
["put", ["RPF", ["#WEAPON_MP40"]]] call keko_loadout_primary_weapon;
["put", ["RMP", ["#WEAPON_MP40"]]] call keko_loadout_primary_weapon;
["put", ["MUN", ["#WEAPON_K98"]]] call keko_loadout_primary_weapon;
["put", ["GRE", ["#WEAPON_K98"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", []]] call keko_loadout_secondary_weapon;
["put", ["GMP", ["#WEAPON_P08"]]] call keko_loadout_secondary_weapon;
["put", ["GST", ["#WEAPON_P08"]]] call keko_loadout_secondary_weapon;
["put", ["MG3", ["#WEAPON_P38"]]] call keko_loadout_secondary_weapon;
["put", ["MG4", ["#WEAPON_P38"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;
["put", ["RPF", ["fow_w_pzfaust_60"]]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;
["put", ["RPF", ["fow_1Rnd_pzfaust_60"]]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["GMP", ["LIB_Binocular_GER"]]] call keko_loadout_optics;
["put", ["GST", ["LIB_Binocular_GER"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["SAN", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;


["put", ["DEFAULT", []]] call keko_loadout_linkable_items;	
["put", ["FUN", ["ItemRadio","ItemCompass","ItemMap"]]] call keko_loadout_linkable_items;	
["put", ["GMP", ["ItemCompass","ItemMap"]]] call keko_loadout_linkable_items;
["put", ["GST", ["ItemCompass","ItemMap"]]] call keko_loadout_linkable_items;
["put", ["UMP", ["ItemCompass","ItemMap"]]] call keko_loadout_linkable_items;