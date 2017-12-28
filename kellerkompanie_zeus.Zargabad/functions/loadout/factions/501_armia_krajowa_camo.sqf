// Armia Krajowa (Partyzanci)
keko_loadout_list = [
	["---- Armia Krajowa Camo ----", ""],
	["Porucznik (Lieutenant)", "LEA"],
	["Sierzant (Sergeant)", "SQL"],
	["Kapral (Corporal)", "FTL"],	
	["Sanitariusz (Medic)", "MED"],
	["Starszy Szeregowy (Radio Operator)", "RAD"],
	["Szeregowy [Thompson] (Rifleman)", "THO"],
	["Szeregowy [BAR] (Rifleman)", "BAR"],
	["Szeregowy [Mosin] (Rifleman)", "MOS"],
	["Szeregowy [K98] (Rifleman)", "K98"]
];



["put", ["#PRIMARY_MAG_THOMPSON", "LIB_30Rnd_45ACP"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_BAR", "GLIB_POL_20Rnd_792x57mm"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_MOSIN", "LIB_5Rnd_762x54"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_K98", "lib_5Rnd_792x57"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_PPSH", "LIB_71Rnd_762x25"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_G33", "lib_5Rnd_792x57"]] call keko_loadout_keywords;	
["put", ["#SECONDARY_MAG_REV", "GLIB_FRA_6Rnd_827mm"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG_P38", "lib_8Rnd_9x19"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG_MAUSER", "LIB_6Rnd_763x25"]] call keko_loadout_keywords;
["put", ["#GRENADE", "LIB_m39"]] call keko_loadout_keywords;
["put", ["#SMOKE", "LIB_nb39"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "B_LIB_SOV_RA_Radio"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_LIB_SOV_RA_MedicalBag_00"]] call keko_loadout_keywords;
["put", ["#BACKPACK_BAR", "B_LIB_US_MGbag"]] call keko_loadout_keywords;



["put", ["DEFAULT", ["U_LIB_POL_Soldier_camo_21vnpbcgcStSzPpsch41m","U_LIB_POL_Soldier_camo_luftvnpgcbcStSzM9130","U_LIB_POL_Soldier_camo_00vmpbcbcSzM9130","U_LIB_POL_Soldier_camo_15vfpbcbcSzK98","U_LIB_POL_Soldier_camo_09vfpbcbcSzK98"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_LIB_POL_Soldier_camo_luftvnpgcbcStSzM9130"]]] call keko_loadout_uniform;
["put", ["SQL", ["U_LIB_POL_Soldier_camo_11vvpncbcStSztSten","U_LIB_POL_Soldier_camo_15vbpbcgcSztMp40"]]] call keko_loadout_uniform;
["put", ["FTL", ["U_LIB_POL_Soldier_camo_03vbpbcncKplMp40","U_LIB_POL_Soldier_camo_27vfpbcbcStKplG43"]]] call keko_loadout_uniform;
["put", ["MED", ["U_LIB_POL_Soldier_camo_15vbpbcbcSantM1911"]]] call keko_loadout_uniform;
["put", ["RAD", ["U_LIB_POL_Radioman_03vbpbcncKplG43"]]] call keko_loadout_uniform;



["put", ["DEFAULT", []]] call keko_loadout_vest;
["put", ["LEA", ["V_LIB_GER_PrivateBelt"]]] call keko_loadout_vest;
["put", ["SQL", ["V_LIB_SOV_RAZV_PPShBelt"]]] call keko_loadout_vest;
["put", ["FTL", ["V_LIB_WP_Kar98Vest"]]] call keko_loadout_vest;
["put", ["MED", ["V_LIB_DAK_PrivateBelt"]]] call keko_loadout_vest;
["put", ["RAD", ["V_LIB_WP_Kar98Vest"]]] call keko_loadout_vest;
["put", ["BAR", ["V_LIB_WP_MGVest"]]] call keko_loadout_vest;
["put", ["THO", ["V_LIB_SOV_RAZV_PPShBelt"]]] call keko_loadout_vest;
["put", ["MOS", ["V_LIB_SOV_RAZV_SVTBelt"]]] call keko_loadout_vest;
["put", ["K98", ["V_LIB_SOV_RAZV_PPShBelt"]]] call keko_loadout_vest;


["put", ["DEFAULT", []]] call keko_loadout_primary_mag;
["put", ["LEA", ["#PRIMARY_MAG_THOMPSON"]]] call keko_loadout_primary_mag;
["put", ["SQL", ["#PRIMARY_MAG_PPSH"]]] call keko_loadout_primary_mag;
["put", ["FTL", ["#PRIMARY_MAG_G33"]]] call keko_loadout_primary_mag;
["put", ["BAR", ["#PRIMARY_MAG_BAR"]]] call keko_loadout_primary_mag;
["put", ["THO", ["#PRIMARY_MAG_THOMPSON"]]] call keko_loadout_primary_mag;
["put", ["MOS", ["#PRIMARY_MAG_MOSIN"]]] call keko_loadout_primary_mag;
["put", ["K98", ["#PRIMARY_MAG_K98"]]] call keko_loadout_primary_mag;


["put", ["DEFAULT", []]] call keko_loadout_secondary_mag;
["put", ["LEA", ["#SECONDARY_MAG_MAUSER"]]] call keko_loadout_secondary_mag;
["put", ["SQL", ["#SECONDARY_MAG_P38"]]] call keko_loadout_secondary_mag;
["put", ["MED", ["#SECONDARY_MAG_REV"]]] call keko_loadout_secondary_mag;

_default_uniform_inventory = [[14, "ACE_packingBandage"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[2,"#GRENADE"]];
["put", ["DEFAULT", _default_uniform_inventory]] call keko_loadout_uniform_inventory;
["put", ["LEA", [[15, "ACE_packingBandage"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[2,"#SECONDARY_MAG_MAUSER"],[1,"#GRENADE"]]]] call keko_loadout_uniform_inventory;
["put", ["SQL", [[15, "ACE_packingBandage"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[2,"#SECONDARY_MAG_P38"],[1,"#GRENADE"]]]] call keko_loadout_uniform_inventory;
["put", ["MED", [[12, "ACE_packingBandage"],[1,"ACE_surgicalKit"],[2,"#SECONDARY_MAG_REV"]]]] call keko_loadout_uniform_inventory;



["put", ["DEFAULT", []]] call keko_loadout_vest_inventory;
["put", ["LEA", [[3, "#PRIMARY_MAG_THOMPSON"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["SQL", [[5, "#PRIMARY_MAG_PPSH"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["FTL", [[16, "#PRIMARY_MAG_G33"],[2, "#SMOKE"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MED", [[8, "ACE_epinephrine"],[8, "ACE_morphine"],[6, "ACE_tourniquet"],[8, "ACE_elasticBandage"]]]] call keko_loadout_vest_inventory;
["put", ["RAD", [[16, "#PRIMARY_MAG_MOSIN"],[2, "#SMOKE"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["BAR", [[12, "#PRIMARY_MAG_BAR"]]]] call keko_loadout_vest_inventory;
["put", ["THO", [[6, "#PRIMARY_MAG_THOMPSON"],[2, "#SMOKE"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["MOS", [[16, "#PRIMARY_MAG_MOSIN"],[2, "#SMOKE"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;
["put", ["K98", [[16, "#PRIMARY_MAG_K98"],[2, "#SMOKE"],[1, "#GRENADE"]]]] call keko_loadout_vest_inventory;



["put", ["DEFAULT", ["H_LIB_POL_Cap_BrA2","H_LIB_POL_Cap_WH00A2BR","H_LIB_POL_Cap_FgA1BR","H_LIB_POL_HelmetCamo_11","H_LIB_POL_HelmetCamo_09"]]] call keko_loadout_helmet;
["put", ["LEA", ["H_LIB_POL_Beret_NoirA1"]]] call keko_loadout_helmet;
["put", ["SQL", ["H_LIB_POL_Helmet_ABRWSS","H_LIB_POL_Cap_WH15A2BR"]]] call keko_loadout_helmet;
["put", ["FTL", ["H_LIB_POL_Calot_BrunBR","H_LIB_POL_HelmetCamo_03"]]] call keko_loadout_helmet;
["put", ["MED", ["H_LIB_POL_Calot_KakiBR"]]] call keko_loadout_helmet;
["put", ["RAD", ["H_LIB_POL_Beret_BrunA1"]]] call keko_loadout_helmet;



["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["RAD", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;
["put", ["MED", ["#BACKPACK_MED"]]] call keko_loadout_backpack;
["put", ["BAR", ["#BACKPACK_BAR"]]] call keko_loadout_backpack;



["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["MED", [[30, "ACE_elasticBandage"],[2, "ACE_salineIV_500"],[8,"adv_aceSplint_splint"]]]] call keko_loadout_backpack_inventory;
["put", ["BAR", [[2, "#GRENADE"],[2, "#SMOKE"],[3, "#PRIMARY_MAG_BAR"]]]] call keko_loadout_backpack_inventory;



["put", ["DEFAULT", []]] call keko_loadout_primary_weapon;
["put", ["LEA", ["LIB_M1928A1_Thompson"]]] call keko_loadout_primary_weapon;
["put", ["SQL", ["LIB_PPSh41_d"]]] call keko_loadout_primary_weapon;
["put", ["FTL", ["LIB_G3340"]]] call keko_loadout_primary_weapon;
["put", ["RAD", ["LIB_M38"]]] call keko_loadout_primary_weapon;
["put", ["THO", ["LIB_M1928_Thompson"]]] call keko_loadout_primary_weapon;
["put", ["BAR", ["GLIB_POL_WZ28"]]] call keko_loadout_primary_weapon;
["put", ["MOS", ["LIB_M38","LIB_M9130"]]] call keko_loadout_primary_weapon;
["put", ["K98", ["LIB_K98"]]] call keko_loadout_primary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_primary_items;


["put", ["DEFAULT", []]] call keko_loadout_secondary_weapon;
["put", ["LEA", ["LIB_M1896"]]] call keko_loadout_secondary_weapon;
["put", ["SQL", ["LIB_P38"]]] call keko_loadout_secondary_weapon;
["put", ["MED", ["GLIB_FRA_REV1982"]]] call keko_loadout_secondary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_secondary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_weapon;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_items;


["put", ["DEFAULT", []]] call keko_loadout_tertiary_mag;


["put", ["DEFAULT", []]] call keko_loadout_optics;
["put", ["LEA", ["LIB_Binocular_SU"]]] call keko_loadout_optics;
["put", ["SQL", ["LIB_Binocular_GER"]]] call keko_loadout_optics;


["put", ["DEFAULT", []]] call keko_loadout_goggles;


["put", ["DEFAULT", []]] call keko_loadout_attributes;
["put", ["MED", [["ace_medical_medicClass",2,true]]]] call keko_loadout_attributes;


["put", ["DEFAULT", []]] call keko_loadout_linkable_items;	
["put", ["RAD", ["N_LIB_GER_Cap_Earphone"]]] call keko_loadout_linkable_items;
