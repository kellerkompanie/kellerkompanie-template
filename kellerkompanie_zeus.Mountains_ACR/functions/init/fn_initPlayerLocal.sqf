/*
 * Original Author: Belbo
 * Modified by: Schwaggot
 * 
 * Automatically executed initPlayerLocal.sqf-substitute. Spawned via adv_fnc_initOrganizer.
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

if (!hasInterface) exitWith {};

//parameter variables are initialized, if player is not hosting:
if (!isServer) then {
	call keko_fnc_parVariables;
	//call keko_fnc_variables;
	call keko_fnc_loadoutVariables;
	call keko_fnc_tfarSettings;
};

//waitUntil-player is initialized:
waitUntil {player == player && !isNil "keko_params_defined"};
//waitUntil {player == player};
//disable channels (description.ext seems not to work correctly in that regard):
//[[1,3,4,5],true] call adv_fnc_enableChannels;
//[[0,2],false] call adv_fnc_enableChannels;
//remove radio:
//if ( (missionNamespace getVariable ["adv_par_customLoad",1]) > 0 ) then {
//	player unlinkItem "ItemRadio";
//};

//defines the player's unit:
/*[player] call ADV_fnc_playerUnit;*/

//prevents the player units from blabbering on their radios
if (isMultiplayer) then {
	player setVariable ["BIS_noCoreConversations", true];
	enableRadio false;
};

//waituntil postinit is executed:
waitUntil {!isNil "BIS_fnc_init"};
waitUntil {missionNamespace getVariable "bis_fnc_init"};

//collections
//if (!isServer) then {
//	call adv_fnc_collectCrates;
//	call adv_fnc_collectFlags;
//};

//title text:
//titleText ["", "BLACK FADED"];
//titleText [format ["%1 \n\n\nThis mission was built by %2 \n\n\n Have Fun! :)", briefingName, missionNamespace getVariable ["ADV_missionAuthor","[SeL] Belbo // Adrian"]], "BLACK FADED",0];

//fuck mcc
//if (!isNil "mcc_actionInedx") then { player removeAction mcc_actionInedx; };

//stupid goggles are removed:
//if ( (toUpper (goggles player)) in ["MASK_M40_OD","MASK_M40","MASK_M50","G_BALACLAVA_BLK","G_BALACLAVA_COMBAT","G_BALACLAVA_LOWPROFILE","G_BALACLAVA_OLI","G_BANDANNA_AVIATOR","G_BANDANNA_BEAST","G_BANDANNA_BLK"
//	,"G_BANDANNA_KHK","G_BANDANNA_OLI","G_BANDANNA_SHADES","G_BANDANNA_SPORT","G_BANDANNA_TAN","G_GOGGLES_VR","MURSHUN_CIGS_CIG0","MURSHUN_CIGS_CIG1","MURSHUN_CIGS_CIG2","MURSHUN_CIGS_CIG3","MURSHUN_CIGS_CIG4"]
//) then { removeGoggles player; };

waitUntil {time > 0};

//logistics menu:
//logistics_flag addAction [("<t color='#33FFFF' size='2' align='center'>" + ("Logistik-Menü") + "</t>"), {createDialog "keko_logistic_mainDialog";}];

//gearsaving menu:
//ADV_objects_clearCargo call adv_fnc_gearsaving;
//ADV_objects_gearSaving call adv_fnc_gearloading;

//adds loadout menu to BriefingBoards:

//gear_crate addAction [("<t color='#00FF00' size='2' align='center'>" + ("Loadout-Menü") + "</t>"), {createDialog "keko_loadouts_mainDialog";}];

//handling of respawned players:
/*call {
	if ( missionNamespace getVariable ["ADV_par_moveMarker",2] isEqualTo 99 ) exitWith {
		setPlayerRespawnTime 9999;
	};
	adv_objects_flags call ADV_fnc_flag;
	if ( missionNamespace getVariable ["ADV_par_moveMarker",2] isEqualTo 3 ) then {
		ADV_handle_moveRespMarker = [120,20, missionNamespace getVariable ["ADV_par_remRespWest",0]] call ADV_fnc_moveRespMarker;
	};
};*/

//disable fatigue if wanted:
/*if ( (missionNamespace getVariable ["ADV_par_fatigue",1]) isEqualTo 0 ) then {
	player enableFatigue false;
	player enableStamina false;
	adv_evh_fatigue = player addEventhandler ["Respawn", {player enableFatigue false; player enableStamina false;}]; 
};*/

//adds action to throw it away if a disposable launcher is shot.
//if !(isClass (configFile >> "CfgPatches" >> "adv_dropLauncher")) then { ADV_index_dispLaunch = [] call ADV_fnc_dispLaunch; };

sleep 1;
//loadouts are placed on the units on spawn
if(missionNamespace getVariable ["keko_par_pre_loadout",1] == 1) then {
	[player, (str player) select [0,3]] call keko_fnc_giveLoadout;
};


//failsafe for missing curator interface:
_prefix = (str player) select [0,3];
if ( toUpper (_prefix) == "CMD" ) then {
	if ( isNull (getAssignedCuratorLogic player) ) then { [str player, 3] remoteExecCall ["keko_fnc_createZeus",2]; };
	if ( isNil "keko_evh_createZeusRespawn" ) then {
		keko_evh_createZeusRespawn = player addEventhandler ["RESPAWN",{
			if ( isNull (getAssignedCuratorLogic player) ) then { [str player, 3] remoteExecCall ["keko_fnc_createZeus",2]; };
		}];
	};
};

//safe zones around respawn markers::
/*switch ( side (group player) ) do {
	case west: { [player,"respawn_west",70] call adv_fnc_safezone; };
	case east: { [player,"respawn_east",70] call adv_fnc_safezone; };
	case independent: { [player,"respawn_guerrila",70] call adv_fnc_safezone; };
	default {};
};*/

//igi-load
/*if !( isClass(configFile >> "CfgPatches" >> "ace_cargo") ) then {
	ADV_handle_igiLoad = [] execVM "scripts\IgiLoad\IgiLoadInit.sqf";
};*/

//moves the player to position of object called "respawn_helper", if it's present (for Nimitz for example):
/*call {
	if ( side (group player) isEqualTo east && !isNil "respawn_helper_east" ) exitWith {
		adv_evh_respawnMover = player addEventhandler ["RESPAWN",{
			player setPosATL (getPosATL respawn_helper_east);
			player setDir (getDir respawn_helper_east);
		}];
	};
	if ( side (group player) == independent && !isNil "respawn_helper_independent" ) exitWith {
		adv_evh_respawnMover = player addEventhandler ["RESPAWN",{
			player setPosATL (getPosATL respawn_helper_independent);
			player setDir (getDir respawn_helper_independent);
		}];
	};
	if ( !isNil "respawn_helper" ) exitWith {
		adv_evh_respawnMover = player addEventhandler ["RESPAWN",{
			player setPosATL (getPosATL respawn_helper);
			player setDir (getDir respawn_helper);
		}];
	};
};*/

//disarming actions for pre placed mines:
/*if ( isClass(configFile >> "CfgPatches" >> "ace_explosives") ) then {
	[] call adv_fnc_aceMine;
};*/

//variable for preload-check:
/*adv_var_preloadFinished = false;
adv_evh_preloadFinished = ["adv_preloadFinished_hints", "onPreloadFinished" , {
	adv_var_preloadFinished = true;
	["adv_preloadFinished_hints", "onPreloadFinished"] call BIS_fnc_removeStackedEventHandler;
}] call BIS_fnc_addStackedEventHandler;

waitUntil {adv_var_preloadFinished};

if ( serverCommandAvailable "#kick" ) then {
	if	!( (call BIS_fnc_admin) isEqualTo 1 ) then {
		call adv_fnc_adminCommands;
	};
};*/

//titletext:
/*sleep 4;
titleText ["", "BLACK FADED",0];
sleep 1;
titleFadeOut 3;
sleep 2;*/
//hint if cba is not run:
/*if !( isClass(configFile >> "CfgPatches" >> "cba_main") ) then {
	hintC "This mission needs CBA_A3 in order to run properly.";
};*/
//a little hint stating the date and time
/*call {
	if ( (toUpper worldname) in ["STRATIS","ALTIS"] ) exitWith {
		["Have Fun!"] spawn BIS_fnc_infoText;
		[] spawn compile preprocessFileLineNumbers "a3\missions_f_epa\Campaign_shared\Functions\Timeline\fn_camp_showOSD.sqf";
	};
	["Have Fun!", "Datum:" + str (date select 2) + "/" + str (date select 1) + "/" + str (date select 0)] spawn BIS_fnc_infoText;
};*/



//[player] call keko_fnc_initCrates;


/*_prefix = (str player) select [0,3];
if ( toUpper (_prefix) == "SQL" || toUpper (_prefix) == "LEA" ) then {
	jump_flag addAction [("<t color='#FF0000' size='2' align='center'>" + ("Parachute Group") + "</t>"),"teleport.sqf"];
};

jump_flag_single addAction [("<t color='#FF0000' size='2' align='center'>" + ("Parachute Self") + "</t>"),"teleport_self.sqf"];
*/



//end of initPlayerLocal.