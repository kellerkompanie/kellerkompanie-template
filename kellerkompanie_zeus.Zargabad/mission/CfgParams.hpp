/*
 * Original author: Belbo [SeL]
 * Adjusted by: Schwaggot
 *
 * Contains the params and standard values for this params of the mission.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * class: name of the param class. Each parameter starting with param_ will be changed to a global variable in format adv_par_*, where * are the characters that follow param_
 * title: Title of the param shown in the MP lobby.
 * values: Numerical values that are assigned to the...
 * texts: Text that is shown for each numerical value in the alpha numeric order of the numerical values.
 * default: Default value that will be default if you start the mission without editing anything in the MP lobb. EDIT ONLY THESE!
 *
 * Public: Yes
 */

class dummy_loadouts {
	title = "---------------------- Loadout ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class param_pre_loadout
{
	title="Loadout bei Spawn";
	values[] = {
		0, // Deaktiviert
		1  // Aktiviert
	};
	texts[] = {
		"Deaktiviert",
		"Aktiviert"
	};
	default = 1;
};
class param_faction
{
	title="Player Faction";
	values[] = {
		1, // NATO
		2, // AAF
		3, // CSAT
		4, // FIA
		5, // CTRG
		6, // Guerilla

		50, // NATO Apex
		51, // CTRG Apex
		52, // Viper
		53, // Syndikat
		54, // Gendamerie

		100, // US OCP
		101, // US UCP
		102, // US Ranger Woodland
		103, // US Ranger Desert

		104, // US Marines D
		105, // US Marines WD
		106, // MARSOC

		110, // BAF MTP
		111, // BAF Arctic MTP
		112, // BAF Arctic White
		113, // BAF Temp
		114, // BAF Wdl		
		115, // BAF Desert
				
		120, // BW Fleck
		121, // BW Tropen
		122, // BW KSK Fleck
		123, // BW KSK Tropen
		124, // Polizei Zivil 
		125, // GSG9

		130, // Black Order
		131, // Black Order SpecOps
		132, // Early Black Order
		133, // Black Order Red Berets	

		140, // Japan		
		141, // People Liberation Army Woodland
		142, // People Liberation Army Desert

		150, // Israel Defense Forces

		160, // Siberian Foxhound Guard				
		
		999  // Custom
	};
	texts[] = {
		"NATO - North Atlantic Treaty Organization (minimal)",
		"AAF  - Altis Armed Forces (minimal)",
		"CSAT - Canton-Protocol Strategic Alliance Treaty (minimal)",
		"FIA  - Freedom and Independence Army (minimal)",
		"CTRG - Combat Technology Research Group (minimal)",
		"Guerilla (minimal)",

		"NATO Tropical [APEX] (minimal)",
		"CTRG Tropical [APEX] (minimal)",
		"CSAT Viper [APEX] (minimal)",
		"Syndikat [APEX] (minimal)",
		"Gendamerie [APEX] (minimal)",		

		"U.S. Army - Operational Camouflage Pattern (main)",
		"U.S. Army - Universal Camouflage Pattern (main)",
		"U.S. Army Rangers - Woodland (main)",
		"U.S. Army Rangers - Desert (main)",
		"U.S. Marine Corps - Marine Pattern Desert (main)",
		"U.S. Marine Corps - Marine Pattern Woodland (main)",
		"U.S. MARSOC - Marine Corps Forces Special Operations Command (main)",

		"British Armed Forces - Multi-Terrain Pattern (main)",
		"British Armed Forces - Arctic Multi-Terrain Pattern (main)",
		"British Armed Forces - Arctic White (main)",
		"British Armed Forces - Temperate (main)",
		"British Armed Forces - Woodland (main)",		
		"British Armed Forces - Desert (main)",
		
		"Bundeswehr - Flecktarn (main)",
		"Bundeswehr - Tropentarn (main)",
		"Bundeswehr - KSK Fleck (main)",
		"Bundeswehr - KSK Tropen (main)",
		"Polizei (SEK) Zivil (main)",
		"GSG9 (main)",

		"Black Order (main)",
		"Black Order - Special Forces (main)",
		"Black Order - Early Years (main)",
		"Black Order - Red Berets (main)",

		"Japan - Self-Defense Forces (main)",		
		"China - PLA Woodland (main)",
		"China - PLA Desert (main)",

		"Israel Defense Forces (main)",

		"Foxhound Siberian Guard (main)",		
		
		"Custom"
	};
	default = 1;
};
class param_give_map
{
	title="Give map and compass to players";
	values[] = {0,1};
	texts[] = {
		"No",
		"Yes"
	};
	default = 1;
};
class param_give_gps
{
	title="Give GPS to players";
	values[] = {0,1,2,3,4};
	texts[] = {
		"No",
		"GPS",
		"GPS and MicroDAGR",
		"MicroDAGR",
		"cTab"
	};
	default = 4;
};
class param_give_nvg
{
	title="Nightvision Equipment";
	values[] = {
		0,  // None
		1,  // Headlamp white
		2,  // Headlamp color
		3,  // NVG 1.Gen
		4,  // NVG 2.Gen
		5,  // NVG 3.Gen
		6,  // NVG 4.Gen
		7,  // NVG Wide
		8,  // Wärmesicht
		9,  // (main) Ami Mono
		10, // (main) Ami Dual
		11, // (main) BAF Mono
		12  // (main) Sovjet Mono
	};
	texts[] = {
		"None",
		"Headlamp white",
		"Headlamp color",
		"NVG 1.Gen",
		"NVG 2.Gen",
		"NVG 3.Gen",
		"NVG 4.Gen",
		"NVG Wide",
		"Wärmesicht",
		"(main) Ami Mono",
		"(main) Ami Dual",
		"(main) BAF Mono",
		"(main) Sovjet Mono"
	};
	default = 0;
};
class param_give_radio
{
	title="Give radios to players";
	values[] = {0,1,2,3};
	texts[] = {
		"No",
		"Personal for all",
		"Only personal for lead positions, rifleman for the rest",
		"Just for lead positions"
	};
	default = 1;
};

class dummy_time {
	title = "---------------------- Zeit-Parameter ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class param_custom_time
{
	title="Zeit-Einstellung";
	values[] = {0,99};
	texts[] = {"Per Parameter","Keine Veränderung"};
	default = 0;
};
class param_hour
{
	title="Startzeit";
	values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23};
	texts[] = {"0 Uhr","1 Uhr","2 Uhr","3 Uhr","4 Uhr","5 Uhr","6 Uhr","7 Uhr","8 Uhr","9 Uhr","10 Uhr","11 Uhr","12 Uhr","13 Uhr","14 Uhr","15 Uhr","16 Uhr","17 Uhr","18 Uhr","19 Uhr","20 Uhr","21 Uhr","22 Uhr","23 Uhr"};
	default = 6;
};
class param_minute
{
	title="Minuten";
	values[] = {0,10,20,30,40,50};
	texts[] = {"0 Minuten","10 Minuten","20 Minuten","30 Minuten","40 Minuten","50 Minuten"};
	default = 0;
};
class param_day
{
	title="Mondphase (funktioniert nur falls Datum auf automatisch steht)";
	values[] = {14,23,29,7};
	texts[] = {"Neumond","zunehmender Halbmond (sichtbar in der ersten Hälfte der Nacht)","Vollmond","abnehmender Halbmond (sichtbar in der zweiten Hälfte der Nacht)"};
	default = 23;
};

class dummy_environment {
	title = "---------------------- Umwelt-Parameter ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class param_randomWeather
{
	title="Dynamisches Wetter";
	values[] = {99,1,2,3,4,5,6,7,8,9};
	texts[] = {"Kein dynamisches Wetter","Klar","Bewölkt","Leichter Regen","Mittlerer Regen","Schwerer Regen","Leichter Nebel","Mittlerer Nebel","Dichter Nebel","Zufälliges Wetter"};
	default = 99;
};
class param_weather
{
	title="Dauerhaftes Wetter";
	values[] = {99,1,2,3,4,5,6,7,8,9,98};
	texts[] = {"Keine Veränderung","Sonnig","Klar","Bewölkt","Leichter Regen","Mittlerer Regen","Schwerer Regen","Leichter Nebel","Mittlerer Nebel","Dichter Nebel","Zufälliges Wetter"};
	default = 99;
};
/*class dummy_respawn {
	title = "---------------------- Respawn ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class param_remRespWest
{
	title="Respawn-Marker nach 60 secs entfernen?";
	values[] = {1,0};
	texts[] = {"Ja","Nein"};
	default = 0;
};
class param_moveMarker
{
	title="Wie soll mit respawnenden oder nachzuführenden Spielern umgegangen werden?";
	values[] = {0,1,2};
	texts[] = {"Kein Respawn","Fester Respawn","Beweglicher Respawn"};
	default = 1;
};
class param_vehicleRespawn
{
	title="Wie hoch soll der Respawn-Timer für Fahrzeuge eingestellt werden?";
	values[] = {900,600,300,60,30,20,10,9999};
	texts[] = {"15 Minuten","10 Minuten","5 Minuten","60 Sekunden","30 Sekunden","20 Sekunden","10 Sekunden","Deaktiviert"};
	default = 300;
};*/
class dummy_settings_game {
	title = "---------------------- Game Settings ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class param_sideRelations
{
	title="Independent verbündet mit";
	values[]  = {3,2,1,0};
	texts[] = {"OPFOR + BLUFOR","OPFOR","BLUFOR","keiner"};
	default = 0;
};
/*class param_fatigue
{
	title="Ausdauer";
	values[] = {1,0};
	texts[] = {"Aktiviert","Deaktiviert"};
	default = 1;
};
class param_engineArtillery
{
	title="Artillerie-Computer";
	values[] = {1,0};
	texts[] = {"Deaktiviert","Aktiviert"};
	default = 0;
};
class param_TIEquipment
{
	title="NV-/Thermal in Fahrzeugen/Turrets";
	values[] = {
		4,3
		,2,1
		,0
	};
	texts[] = {
		"Deaktiviert","Deaktiviert für Spieler-Fahrzeuge"
		,"Thermal deaktiviert","Thermal deaktiviert für Spieler-Fahrzeuge"
		,"Nein"
	};
	default = 0;
};*/