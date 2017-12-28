// Armia Krajowa (Partyzanci)
keko_loadout_list = [
	["---- Partyzanci ----", ""],
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
["put", ["#PRIMARY_MAG_MOSIN", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_K98", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;	
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


["put", ["DEFAULT", ["U_GELIB_POL_WoodlanderAKStSz02RKMwz28","U_GELIB_POL_CitizenAK02StSzSten","U_GELIB_POL_CitizenAK04SzK98","U_GELIB_POL_CitizenAK01SzM38","U_GELIB_POL_VillagerAK01SzM9130","U_GELIB_POL_WoodlanderAK01SzM9130"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_GELIB_POL_CitizenAK03PckSten"]]] call keko_loadout_uniform;
["put", ["SQL", ["U_GELIB_POL_MGunner_gvnpAK13Sten","U_GELIB_POL_WoodlanderAK01StSztPpsch41d"]]] call keko_loadout_uniform;
["put", ["FTL", ["U_GELIB_POL_VillagerAK02KplP38","U_GELIB_POL_WoodlanderAKKpl04G3340"]]] call keko_loadout_uniform;
["put", ["MED", ["U_GELIB_POL_EmployeAKSantREV1982"]]] call keko_loadout_uniform;
["put", ["RAD", ["U_GELIB_POL_Radioman_StSz02M38"]]] call keko_loadout_uniform;






["put", ["DEFAULT", []]] call keko_loadout_vest;
["put", ["LEA", ["V_LIB_GER_PrivateBelt"]]] call keko_loadout_vest;
["put", ["SQL", ["V_LIB_SOV_RAZV_PPShBelt"]]] call keko_loadout_vest;
["put", ["FTL", ["V_LIB_WP_Kar98Vest"]]] call keko_loadout_vest;
["put", ["MED", ["V_LIB_DAK_PrivateBelt"]]] call keko_loadout_vest;
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


["put", ["DEFAULT", keko_loadout_uniform_inventory_default]] call keko_loadout_uniform_inventory;



["put", ["DEFAULT", keko_loadout_vest_inventory_default]] call keko_loadout_vest_inventory;
["put", ["MED", keko_loadout_vest_inventory_medic_default]] call keko_loadout_vest_inventory;


["put", ["DEFAULT", []]] call keko_loadout_helmet;
["put", ["LEA", ["H_LIB_POL_Beret_NoirA1"]]] call keko_loadout_helmet;
["put", ["SQL", ["H_LIB_POL_RA_OfficerCap_NoirA1","H_LIB_POL_Beret_NoirA1"]]] call keko_loadout_helmet;
["put", ["FTL", ["H_LIB_POL_Beret_NoirBR","H_LIB_POL_Calot_NoirBR"]]] call keko_loadout_helmet;
["put", ["MED", ["H_LIB_POL_RA_OfficerCap_Noir"]]] call keko_loadout_helmet;
["put", ["RAD", ["H_LIB_POL_Helmet_BRLuft"]]] call keko_loadout_helmet;
["put", ["BAR", ["H_LIB_POL_Cap_FgA1BR"]]] call keko_loadout_helmet;
["put", ["THO", ["H_LIB_POL_Cap"]]] call keko_loadout_helmet;
["put", ["MOS", ["H_LIB_CIV_Villager_Cap_4","H_LIB_POL_RA_OfficerCap_NoirA1"]]] call keko_loadout_helmet;
["put", ["K98", ["H_LIB_POL_Calot_BrunBR"]]] call keko_loadout_helmet;




["put", ["DEFAULT", []]] call keko_loadout_backpack;
["put", ["LEA", ["#BACKPACK_RADIO"]]] call keko_loadout_backpack;



["put", ["DEFAULT", []]] call keko_loadout_backpack_inventory;
["put", ["MED", keko_loadout_backpack_inventory_med]] call keko_loadout_backpack_inventory;



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
["put", ["MED", [["ace_medical_medicClass",1,true]]]] call keko_loadout_attributes;


["put", ["DEFAULT", []]] call keko_loadout_linkable_items;	
["put", ["RAD", ["N_LIB_GER_Cap_Earphone"]]] call keko_loadout_linkable_items;
