_param_faction = "param_faction" call BIS_fnc_getParamValue;
_param_give_gps = "param_give_gps" call BIS_fnc_getParamValue;

keko_loadout_variables_set = false;








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



// add MicroDAGR
if (_param_give_gps == 2 or _param_give_gps == 3) then {
	keko_loadout_uniform_inventory pushBack [1, "ACE_microDAGR"];
};

// ----- END Default Loadout ----- //


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


keko_loadout_roles = ["new", []] call OO_HASHMAP;

{
	["put", [_x select 1, [_x select 0, _forEachIndex]]] call keko_loadout_roles;
} forEach keko_loadout_list;


keko_loadout_variables_set = true;