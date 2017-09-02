_param_faction = "param_faction" call BIS_fnc_getParamValue;
_param_give_gps = "param_give_gps" call BIS_fnc_getParamValue;

keko_loadout_variables_set = false;





keko_loadout_keywords = ["new", []] call OO_HASHMAP;


keko_loadout_uniform = ["new", []] call OO_HASHMAP;
keko_loadout_uniform_inventory = ["new", []] call OO_HASHMAP;

keko_loadout_vest = ["new", []] call OO_HASHMAP;
keko_loadout_vest_inventory = ["new", []] call OO_HASHMAP;

keko_loadout_helmet = ["new", []] call OO_HASHMAP;

keko_loadout_lr_radio = ["new", []] call OO_HASHMAP;

keko_loadout_backpack = ["new", []] call OO_HASHMAP;
keko_loadout_backpack_inventory = ["new", []] call OO_HASHMAP;

keko_loadout_primary_weapon = ["new", []] call OO_HASHMAP;
keko_loadout_primary_items = ["new", []] call OO_HASHMAP;
keko_loadout_primary_mag = ["new", []] call OO_HASHMAP;

keko_loadout_secondary_weapon = ["new", []] call OO_HASHMAP;
keko_loadout_secondary_items = ["new", []] call OO_HASHMAP;
keko_loadout_secondary_mag = ["new", []] call OO_HASHMAP;

keko_loadout_tertiary_weapon = ["new", []] call OO_HASHMAP;
keko_loadout_tertiary_items = ["new", []] call OO_HASHMAP;
keko_loadout_tertiary_mag = ["new", []] call OO_HASHMAP;

keko_loadout_grenade = ["new", []] call OO_HASHMAP;

keko_loadout_optics = ["new", []] call OO_HASHMAP;

keko_loadout_insignia = ["new", []] call OO_HASHMAP;

keko_loadout_goggles = ["new", []] call OO_HASHMAP;

keko_loadout_attributes = ["new", []] call OO_HASHMAP;

keko_loadout_linkable_items = ["new", []] call OO_HASHMAP;



keko_loadout_roles = ["new", []] call OO_HASHMAP;

keko_logistic_crates = ["new", []] call OO_HASHMAP;
keko_logistic_crates_content = ["new", []] call OO_HASHMAP;

// add MicroDAGR
//if (_param_give_gps == 2 or _param_give_gps == 3) then {
//	keko_loadout_uniform_inventory pushBack [1, "ACE_microDAGR"];
//};



// ----- START Default Parameters ----- //



keko_loadout_uniform_inventory_default = [[15, "ACE_fieldDressing"],[1, "ACE_morphine"],[3, "ACE_tourniquet"],[1, "ACE_MapTools"],[1, "ACE_Flashlight_XL50"],[1, "ACE_IR_Strobe_Item"],[1, "#SECONDARY_MAG"],[1, "#SMOKE_WHITE"],[1, "#SMOKE_GREEN"]];
keko_loadout_vest_inventory_default = [[5, "#PRIMARY_MAG"],[5, "#PRIMARY_MAG_TRACER"],[1, "#SMOKE_WHITE"],[3, "#GRENADE"]];

keko_loadout_vest_inventory_medic_default = [[10, "ACE_epinephrine"],[10, "ACE_morphine"],[1,"ACE_surgicalKit"],[10, "ACE_quikclot"],[3, "#PRIMARY_MAG"],[3, "#PRIMARY_MAG_TRACER"],[2, "#SMOKE_WHITE"]];

keko_loadout_backpack_inventory_med = [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"]];
keko_loadout_backpack_inventory_doc = [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"],[1,"adv_aceCPR_AED"]];
keko_loadout_backpack_inventory_eod = [[6,"DemoCharge_Remote_Mag"],[2,"SatchelCharge_Remote_Mag"],[1,"ACE_DefusalKit"],[1,"ACE_Clacker"]];
keko_loadout_backpack_inventory_eng = [[1, "ToolKit"],[1, "ACE_wirecutter"],[1, "ACE_EntrenchingTool"]];


keko_logistic_crate_large_blu = "B_CargoNet_01_ammo_F";
keko_logistic_crate_normal_blu = "Box_NATO_Ammo_F";
keko_logistic_crate_launcher_blu = "Box_NATO_WpsLaunch_F";
keko_logistic_crate_mg_blu = "Box_NATO_WpsSpecial_F";
keko_logistic_crate_support_blu = "Box_NATO_Support_F";
keko_logistic_crate_eod_blu = "Box_NATO_AmmoOrd_F";
keko_logistic_crate_grenades_blu = "Box_NATO_Grenades_F";	

keko_logistic_crate_large_opf = "O_CargoNet_01_ammo_F";
keko_logistic_crate_normal_opf = "Box_East_Ammo_F";
keko_logistic_crate_launcher_opf = "Box_East_WpsLaunch_F";
keko_logistic_crate_mg_opf = "Box_EAST_WpsSpecial_F";
keko_logistic_crate_support_opf = "Box_East_Support_F";
keko_logistic_crate_eod_opf = "Box_East_AmmoOrd_F";
keko_logistic_crate_grenades_opf = "Box_East_Grenades_F";		

keko_logistic_crate_large_ind = "I_CargoNet_01_ammo_F";
keko_logistic_crate_normal_ind = "Box_IND_Ammo_F";
keko_logistic_crate_launcher_ind = "Box_IND_WpsLaunch_F";
keko_logistic_crate_mg_ind = "Box_IND_WpsSpecial_F";
keko_logistic_crate_support_ind = "Box_IND_Support_F";
keko_logistic_crate_eod_ind = "Box_IND_AmmoOrd_F";
keko_logistic_crate_grenades_ind = "Box_Ind_Grenades_F";

keko_logistic_crate_medic = "ACE_medicalSupplyCrate_advanced";



keko_logistic_crate_fireteam_content = [
		[10, "#PRIMARY_MAG", "AMMO"],
		[10, "#PRIMARY_MAG_TRACER", "AMMO"],		
		[6, "#PRIMARY_MAG_LMG", "AMMO"],
		[2, "#SECONDARY_MAG", "AMMO"],

		[2, "#RAT_LAUNCHER", "WEAPON"],

		[6, "#GRENADIER_MAG", "AMMO"],
		[6, "#GRENADE", "AMMO"],
		[4, "#SMOKE_WHITE", "AMMO"],
		[4, "#SMOKE_GREEN", "AMMO"],

		[20, "ACE_fieldDressing", "ITEM"],	
		[4, "ACE_morphine", "ITEM"],
		[4, "ACE_epinephrine", "ITEM"],
		[8, "ACE_tourniquet", "ITEM"],
		[6, "adv_aceSplint_splint", "ITEM"],

		[2, "ACE_CableTie", "ITEM"]
	];

keko_logistic_crate_inf_content = [
		[30, "#PRIMARY_MAG", "AMMO"],
		[30, "#PRIMARY_MAG_TRACER", "AMMO"],		
		[10, "#PRIMARY_MAG_LMG", "AMMO"],
		[10, "#PRIMARY_MAG_MARKSMAN", "AMMO"],
		[6, "#SECONDARY_MAG", "AMMO"],

		[10, "#GRENADIER_MAG", "AMMO"]
	];

keko_logistic_crate_gre_content = [
		[20, "#GRENADIER_MAG", "AMMO"],
		[20, "#GRENADE", "AMMO"],
		[10, "#SMOKE_WHITE", "AMMO"],
		[10, "#SMOKE_GREEN", "AMMO"]
	];

keko_logistic_crate_mg_content = [
		[10, "#PRIMARY_MAG_LMG", "AMMO"],
		[10, "#PRIMARY_MAG_MMG", "AMMO"],
		[1, "#BACKPACK_AUTORIFLE", "ITEM"],
		[2, "ACE_SpareBarrel", "AMMO"]
	];

keko_logistic_crate_at = [
		[1, "#SAT_LAUNCHER", "WEAPON"],
		[3, "#AT_MAG", "AMMO"],
		[1, "#BACKPACK_SPECIALIST", "BACKPACK"],
		[2, "#RAT_LAUNCHER", "WEAPON"]
	];

keko_logistic_crate_aa = [
		[1, "#SAA_LAUNCHER", "WEAPON"],
		[3, "#AA_MAG", "AMMO"],
		[1, "#BACKPACK_SPECIALIST", "BACKPACK"]
	];

keko_logistic_crate_medic_content = [
		//[0, "ACE_atropine"],	// Atropin auto injector
		[50, "ACE_fieldDressing", "ITEM"],	// Bandage (Basic)	
		[50, "ACE_elasticBandage", "ITEM"],	// Bandage (Elastic)	
		[20, "ACE_quikclot", "ITEM"],	// Basic Field Dressing (QuikClot)	
		//[0, "ACE_bloodIV"],	// Blood IV (1000ml)	
		//[0, "ACE_bloodIV_500"],	// Blood IV (500ml)	
		//[0, "ACE_bloodIV_250"],	// Blood IV (250ml)	
		[4, "ACE_bodyBag", "ITEM"],	// Bodybag	
	 
		[10, "ACE_epinephrine", "ITEM"],	//Epinephrine auto injector	
		[10, "ACE_morphine", "ITEM"],	//Morphine auto injector	
		//[0, "ACE_packingBandage"],	//Packing Bandage	
		//[0, "ACE_personalAidKit"],	//Personal Aid Kit	
		//[0, "ACE_plasmaIV"],	//Plasma IV (1000ml)	
		//[0, "ACE_plasmaIV_500"],	//Plasma IV (500ml)	
		//[0, "ACE_plasmaIV_250"],	//Plasma IV (250ml)	
		[10, "ACE_salineIV", "ITEM"],	//Saline IV (1000ml)	
		[10, "ACE_salineIV_500", "ITEM"],	//Saline IV (500ml)	
		//[0, "ACE_salineIV_250"],	//Saline IV (250ml)	
		[2, "ACE_surgicalKit", "ITEM"], // Surgical Kit	
		[10, "ACE_tourniquet", "ITEM"],	// Tourniquet (CAT)	

		[10, "SmokeShell", "AMMO"],

		[10, "adv_aceSplint_splint", "ITEM"],
		[1, "adv_aceCPR_AED", "ITEM"]
	];

keko_logistic_crate_support_content = [
		[2, "SmokeShell", "AMMO"],
		[2, "ToolKit", "ITEM"],
			
		[2, "ACE_EntrenchingTool", "ITEM"],
		[2, "ACE_SpraypaintRed", "ITEM"],
		[1, "ACE_wirecutter", "ITEM"],
		[2, "ACE_SpraypaintGreen", "ITEM"],

		[1, "ACE_rangecard", "ITEM"],
		[10, "ACE_sandbag", "ITEM"],
		
		[2, "ACE_MapTools", "ITEM"],
		[10, "ACE_CableTie", "ITEM"],

		[2, "ACE_UAVBattery", "ITEM"],
		[1, "ACE_DefusalKit", "ITEM"],
		[1, "ACE_minedetector", "ITEM"],
		[1, "ACE_RangeTable_82mm", "ITEM"],
		[4, "ACE_IR_Strobe", "ITEM"],
		[8, "ACE_HandFlare_Red", "ITEM"],

		[1, "adv_aceCPR_AED", "ITEM"], // splints from SeL
		[1, "ACE_personalAidKit", "ITEM"], // Personal Aid Kit
		[4, "ACE_bodyBag", "ITEM"] // Bodybag
	];

keko_logistic_crate_eod_content = [
		[4, "ACE_Cellphone", "ITEM"], // Cellphone
		[2, "ACE_Clacker", "ITEM"], // M57 Firing Device
		[2, "ACE_M26_Clacker", "ITEM"], // M26 Firing Device
		[4, "ACE_DefusalKit", "ITEM"], // Defusal Kit
		[2, "ACE_DeadManSwitch", "ITEM"], // Dead Man’s Switch
		
		[1, "MineDetector", "ITEM"],
		
		[1, "ToolKit", "ITEM"],

		[1, "ACE_VMH3", "WEAPON"],
		[1, "ACE_VMM3", "WEAPON"],

		[3, "ATMine_Range_Mag", "ITEM"],
		[4, "APERSTripMine_Wire_Mag", "ITEM"],
		[4, "ClaymoreDirectionalMine_Remote_Mag", "ITEM"],
		[4, "SatchelCharge_Remote_Mag", "ITEM"],
		[10, "DemoCharge_Remote_Mag", "ITEM"]
	];

keko_logistic_crate_rations_content = [
		[20, "murshun_cigs_matches", "ITEM"],
		[20, "murshun_cigs_cigpack", "ITEM"],
		[10, "immersion_pops_poppack", "ITEM"],

		[10, "ACE_banana", "ITEM"]
	];

keko_crate_list = [
	["---- Munition ----", "LOGISTIC_FNC_NIL", ""],
	["Fire-Team Kiste", "LOGISTIC_CRATE_FT", keko_logistic_crate_normal_blu],
	["Infanterie Kiste", "LOGISTIC_CRATE_INF", keko_logistic_crate_normal_blu],
	["Granaten Kiste", "LOGISTIC_CRATE_GRE", keko_logistic_crate_grenades_blu],
	["MG Kiste", "LOGISTIC_CRATE_MG", keko_logistic_crate_mg_blu],
	["AT Kiste", "LOGISTIC_CRATE_AT", keko_logistic_crate_launcher_blu],
	["AA Kiste", "LOGISTIC_CRATE_AA", keko_logistic_crate_launcher_blu], 
	["---- Support ----", "LOGISTIC_FNC_NIL", ""],
	["Medic Kiste", "LOGISTIC_CRATE_MED", keko_logistic_crate_medic],
	["Support Kiste", "LOGISTIC_CRATE_SUP", keko_logistic_crate_support_blu],
	["Sprengmittel Kiste", "LOGISTIC_CRATE_EOD", keko_logistic_crate_eod_blu],
	["Rationen Kiste", "LOGISTIC_CRATE_RATIONS", keko_logistic_crate_support_blu],
	["Leere Kiste", "LOGISTIC_CRATE_EMPTY", keko_logistic_crate_support_blu],
	["---- Andere ----", "LOGISTIC_FNC_NIL", ""],
	["Ersatzreifen","LOGISTIC_WHEEL", ""],
	["Ersatzkette","LOGISTIC_TRACK", ""],
	["", "LOGISTIC_FNC_NIL", ""],
	["Kisten in der Nähe löschen","LOGISTIC_FNC_DELETE", ""]
];

["put", ["LOGISTIC_CRATE_FT", keko_logistic_crate_fireteam_content]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_INF", keko_logistic_crate_inf_content]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_GRE", keko_logistic_crate_gre_content]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_MG", keko_logistic_crate_mg_content]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_AT", keko_logistic_crate_at]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_AA", keko_logistic_crate_aa]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_MED", keko_logistic_crate_medic_content]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_SUP", keko_logistic_crate_support_content]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_EOD", keko_logistic_crate_eod_content]] call keko_logistic_crates_content;
["put", ["LOGISTIC_CRATE_RATIONS", keko_logistic_crate_rations_content]] call keko_logistic_crates_content;











// ----- END Default Parameters ----- //


switch (_param_faction) do {

	/******** MINIMAL ********/
	case 1: {
		// NATO
		#include "factions\001_nato.sqf"

	};
	case 2: {
		// AAF
		#include "factions\002_aaf.sqf"
		
	};
	case 3: {
		// CSAT
		#include "factions\003_csat.sqf"
		
	};
	case 4: {
		// FIA
		#include "factions\004_fia.sqf"
		
	};
	case 5: {
		// CTRG
		#include "factions\005_ctrg.sqf"
		
	};
	case 6: {
		// Guerilla
		#include "factions\006_guerilla.sqf"
		
	};


	/* APEX */

	case 50: {
		// NATO Tropical
		#include "factions\050_nato_tropical.sqf"
		
	};
	case 51: {
		// CTRG Tropical
		#include "factions\051_ctrg_tropical.sqf"
		
	};
	case 52: {
		// CSAT Viper
		#include "factions\052_csat_viper.sqf"
		
	};
	case 53: {
		// Syndikat Bandits
		#include "factions\053_syndikat_bandits.sqf"
		
	};
	case 54: {
		// Syndikat Paramilitary
		#include "factions\054_syndikat_paramilitary.sqf"
		
	};
	case 55: {
		// Gendamerie
		#include "factions\055_gendamerie.sqf"
		
	};




	/******** MAIN ********/

	/* United States of America */

	case 100: {
		// US Army OCP
		#include "factions\100_army_ocp.sqf"
		
	};
	case 101: {
		// US Army UCP
		#include "factions\101_army_ucp.sqf"
		
	};
	case 102: {
		// US Ranger Woodland
		#include "factions\102_us_ranger_woodland.sqf"
		
	};
	case 103: {
		// US Ranger Desert
		#include "factions\103_us_ranger_desert.sqf"
		
	};
	case 104: {
		// US Marines Desert
		#include "factions\104_marines_d.sqf"
		
	};
	case 105: {
		// US Marines Woodland
		#include "factions\105_marines_wd.sqf"
		
	};	
	case 106: {
		// US MARSOC
		#include "factions\106_marsoc.sqf"
		
	};


	/* British Armed Forces */

	case 110: {
		// BAF MTP
		#include "factions\110_baf_mtp.sqf"
		
	};
	case 111: {
		// BAF Arctic
		#include "factions\111_baf_arctic.sqf"
		
	};
	case 112: {
		// BAF Arctic White
		#include "factions\112_baf_arctic_white.sqf"
		
	};
	case 113: {
		// BAF Temperate
		#include "factions\113_baf_tmp.sqf"
		
	};	
	case 114: {
		// BAF Woodland
		#include "factions\114_baf_wdl.sqf"
		
	};	
	case 115: {
		// BAF Desert
		#include "factions\115_baf_desert.sqf"
		
	};
	


	/* Bundesrepublik Deutschland */

	case 120: {
		// BW Fleck
		#include "factions\120_bw_fleck.sqf"
		
	};
	case 121: {
		// BW Tropen
		#include "factions\121_bw_tropen.sqf"
		
	};
	case 122: {
		// BW KSK Fleck
		#include "factions\122_bw_ksk_fleck.sqf"
		
	};
	case 123: {
		// BW KSK Tropen
		#include "factions\123_bw_ksk_tropen.sqf"
		
	};
	case 124: {
		// Polizei Zivil
		#include "factions\124_polizei_zivil.sqf"
		
	};
	case 125: {
		// Polizei GSG9
		#include "factions\125_polizei_gsg9.sqf"
		
	};	



	/* Black Order */

	case 130: {
		// Black Order
		#include "factions\130_black_order.sqf"
		
	};
	case 131: {
		// Black Order Special Ops
		#include "factions\131_black_order_specops.sqf"
		
	};
	case 132: {		
		// Black Order Early
		#include "factions\132_black_order_early.sqf"
		
	};
	case 133: {
		// Black Order Red Berets
		#include "factions\133_black_order_red_berets.sqf"
		
	};
	
	

	/* Asia */

	case 140: {
		// Japaner
		#include "factions\140_japan_self-defense_forces.sqf"
	
	};
	
	case 141: {
		// Chinese PLA Woodland
		#include "factions\141_chinese_pla_woodland.sqf"
	
	};

	case 142: {
		// Chinese PLA Desert
		#include "factions\142_chinese_pla_desert.sqf"
		
	};



	/* Middle-East */

	case 150: {
		// Israel Defense Forces
		#include "factions\150_isreal_defense_forces.sqf"

	};
	





	/* Russia */

	case 160: {
		// Foxhound Siberian Guard
		#include "factions\160_foxhound_siberian_guard.sqf"
		
	};
	


	/* Misc */	

	case 999: {
		// Custom
		#include "factions\999_custom.sqf"
		
	};

	default {};
};


/* create map of available roles for usage in loadout dialog */
{
	["put", [_x select 1, [_x select 0, _forEachIndex]]] call keko_loadout_roles;
} forEach keko_loadout_list;

/* create map of available crates for usage in logistic dialog */
{
	["put", [_x select 1, [_x select 0, _forEachIndex, _x select 2]]] call keko_logistic_crates;
} forEach keko_crate_list;


keko_loadout_variables_set = true;