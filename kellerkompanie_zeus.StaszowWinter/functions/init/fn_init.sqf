/*
 * Original Author: Belbo
 * Modified by: Schwaggot
 *
 * Automatically executed init.sqf-substitute. Spawned via adv_fnc_initOrganizer.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * None
 *
 * Public: No
 */

// JIP Check (This code should be placed first line of init.sqf file)
isJIP = if (!isServer && isNull player) then {true} else {false};
enableSaving [false, false];

//waitUntil param variables are defined:
waitUntil {!isNil "keko_params_defined"};

//mission storyboard (will be executed on server as long as HC param is not selected. If HC param is selected it will be executed on HC only)
/*if (!isServer && !hasInterface) then { missionNamespace setVariable ["ADV_HCpresent",true,true]; };
call {
	if ( (missionNamespace getVariable ["ADV_par_headlessClient",1]) isEqualTo 2 && (missionNamespace getVariable ["ADV_HCpresent",false]) ) exitWith {
		if !(isServer || hasInterface) then {
			ADV_handle_storyboard = [] execVM "mission\ADV_storyboard.sqf";
		};
	};
	if ( isServer ) then {
		ADV_handle_storyboard = [] execVM "mission\ADV_storyboard.sqf";
	};
};*/

//randomweather:
if !( (missionNamespace getVariable ["keko_par_randomWeather",99]) isEqualTo 99 ) then {
	keko_handle_weather = [] spawn MtB_fnc_randomWeather;
};
//fixed weather:
if !( (missionNamespace getVariable ["keko_par_weather",99]) isEqualTo 99 ) then {
	keko_handle_weather = [] spawn keko_fnc_weather;
};

//engine artillery
/*if ( (missionNamespace getVariable ["ADV_par_engineArtillery",0]) isEqualTo 1 ) then {
	enableEngineArtillery false;
};*/



//_spawn_height = (getPosASL respawn_helper) select 2;
//"respawn" setMarkerPosLocal [markerPos "respawn" select 0, markerPos "respawn" select 1, _spawn_height];

//end of init.