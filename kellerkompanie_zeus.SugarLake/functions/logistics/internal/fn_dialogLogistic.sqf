/*
 * Author: Belbo
 *
 * Function executed by logistic dialog
 *
 * Arguments:
 * 0: crate selection - <STRING>
 * 1: force placement - <BOOL>
 * 2: side of inventory function to call for ammo box - <SIDE>
 * 3: position - <ARRAY>
 *
 * Return Value:
 * spawned ammo box/spare object or boolean if no item has been spawned - <OBJECT>, <BOOL>
 *
 * Example:
 * None
 *
 * Public: Yes
 */

params [
	["_crateSelection", "", [""]],
	["_forcePlacement", false, [true]],
	["_side", side (group player), [west]],
	["_position", getPosASL player, []],
	"_box"
];

_box = true;

if (_crateSelection isEqualTo "KEKO_FNC_NIL") exitWith { ["Keine Aktion ausgewählt",5] call keko_fnc_timedHint; _box = false; };

_par_logisticAmount = missionNamespace getVariable ["keko_par_logisticAmount",99];
_par_logisticDrop = missionNamespace getVariable ["keko_par_logisticDrop",1];

if (isNil "KEKO_logistic_maxAmount_crateGrenades") then {
	switch ( _par_logisticAmount ) do {
		case 1: {
			KEKO_logistic_maxAmount_crateGrenades = 1;
			KEKO_logistic_maxAmount_crateNormal = 3;
			KEKO_logistic_maxAmount_crateAT = 1;
			KEKO_logistic_maxAmount_crateAA = 1;
			KEKO_logistic_maxAmount_crateMG = 1;
			KEKO_logistic_maxAmount_crateMedic = 2;
			KEKO_logistic_maxAmount_crateEOD = 1;
			KEKO_logistic_maxAmount_crateSupport = 1;
		};
		case 2: {
			KEKO_logistic_maxAmount_crateGrenades = 2;
			KEKO_logistic_maxAmount_crateNormal = 6;
			KEKO_logistic_maxAmount_crateAT = 2;
			KEKO_logistic_maxAmount_crateAA = 2;
			KEKO_logistic_maxAmount_crateMG = 2;
			KEKO_logistic_maxAmount_crateMedic = 4;
			KEKO_logistic_maxAmount_crateEOD = 2;
			KEKO_logistic_maxAmount_crateSupport = 2;
		};
		case 3: {
			KEKO_logistic_maxAmount_crateGrenades = 4;
			KEKO_logistic_maxAmount_crateNormal = 8;
			KEKO_logistic_maxAmount_crateAT = 4;
			KEKO_logistic_maxAmount_crateAA = 4;
			KEKO_logistic_maxAmount_crateMG = 4;
			KEKO_logistic_maxAmount_crateMedic = 6;
			KEKO_logistic_maxAmount_crateEOD = 4;
			KEKO_logistic_maxAmount_crateSupport = 4;
		};
		default {
			KEKO_logistic_maxAmount_crateGrenades = 999;
			KEKO_logistic_maxAmount_crateNormal = 999;
			KEKO_logistic_maxAmount_crateAT = 999;
			KEKO_logistic_maxAmount_crateAA = 999;
			KEKO_logistic_maxAmount_crateMG = 999;
			KEKO_logistic_maxAmount_crateMedic = 999;
			KEKO_logistic_maxAmount_crateEOD = 999;
			KEKO_logistic_maxAmount_crateSupport = 999;	
		};
	};
};

switch ( _side ) do {
	case west: {
		KEKO_logistic_crateTypeLarge="B_CargoNet_01_ammo_F";
		KEKO_logistic_crateTypeNormal="Box_NATO_Ammo_F";
		KEKO_logistic_crateTypeAT="Box_NATO_WpsLaunch_F";
		KEKO_logistic_crateTypeAA="Box_NATO_WpsLaunch_F";
		KEKO_logistic_crateTypeMG="Box_NATO_WpsSpecial_F";
		KEKO_logistic_crateTypeSupport="Box_NATO_Support_F";
		KEKO_logistic_crateTypeEOD="Box_NATO_AmmoOrd_F";
		KEKO_logistic_crateTypeGrenades="Box_NATO_Grenades_F";
		KEKO_logistic_crateTypeMedic="Box_NATO_Support_F";		
	};
	case east: {
		KEKO_logistic_crateTypeLarge="O_CargoNet_01_ammo_F";
		KEKO_logistic_crateTypeNormal="Box_East_Ammo_F";
		KEKO_logistic_crateTypeAT="Box_East_WpsLaunch_F";
		KEKO_logistic_crateTypeAA="Box_East_WpsLaunch_F";
		KEKO_logistic_crateTypeMG="Box_EAST_WpsSpecial_F";
		KEKO_logistic_crateTypeSupport="Box_East_Support_F";
		KEKO_logistic_crateTypeEOD="Box_East_AmmoOrd_F";
		KEKO_logistic_crateTypeGrenades="Box_East_Grenades_F";
		KEKO_logistic_crateTypeMedic="Box_East_Support_F";		
	};
	case independent: {
		KEKO_logistic_crateTypeLarge="I_CargoNet_01_ammo_F";
		KEKO_logistic_crateTypeNormal="Box_IND_Ammo_F";
		KEKO_logistic_crateTypeAT="Box_IND_WpsLaunch_F";
		KEKO_logistic_crateTypeAA="Box_IND_WpsLaunch_F";
		KEKO_logistic_crateTypeMG="Box_IND_WpsSpecial_F";
		KEKO_logistic_crateTypeSupport="Box_IND_Support_F";
		KEKO_logistic_crateTypeEOD="Box_IND_AmmoOrd_F";
		KEKO_logistic_crateTypeGrenades="Box_Ind_Grenades_F";
		KEKO_logistic_crateTypeMedic="Box_IND_Support_F";			
	};
};

KEKO_logistic_crateTypeMedic="ACE_medicalSupplyCrate_advanced";

if !(_forcePlacement) then {
	switch ( toUpper (_crateSelection) ) do {
		//can grenade boxes be generated?
		case "KEKO_LOGISTIC_CRATEGRENADES": {
			_crateVariable = "KEKO_logistic_amount_crateGrenades";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateGrenades];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere Granatenkisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };
		};
		//can eod boxes be generated?
		case "KEKO_LOGISTIC_CRATEEOD": {
			_crateVariable = "KEKO_logistic_amount_crateEOD";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateEOD];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere EOD-Kisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };
		};
		//can regular ammunition boxes be generated?
		case "KEKO_LOGISTIC_CRATENORMAL": {
			_crateVariable = "KEKO_logistic_amount_crateNormal";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateNormal];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere Munitionskisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };	
		};
		//can mg boxes be generated?
		case "KEKO_LOGISTIC_CRATEMG": {
			_crateVariable = "KEKO_logistic_amount_crateMG";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateMG];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere MG-Munitionskisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };
		};
		//can at boxes be generated?
		case "KEKO_LOGISTIC_CRATEAT": {
			_crateVariable = "KEKO_logistic_amount_crateAT";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateAT];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere AT-Kisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };
		};
		//can at boxes be generated?
		case "KEKO_LOGISTIC_CRATEAA": {
			_crateVariable = "KEKO_logistic_amount_crateAA";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateAA];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere AA-Kisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };
		};
		//can medic boxes be generated?
		case "KEKO_LOGISTIC_CRATEMEDIC": {
			_crateVariable = "KEKO_logistic_amount_crateMedic";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateMedic];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere Medic-Kisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };
		};
		//can support boxes be generated?
		case "KEKO_LOGISTIC_CRATESUPPORT": {
			_crateVariable = "KEKO_logistic_amount_crateSupport";
			_crateAmount = missionNamespace getVariable [_crateVariable,KEKO_logistic_maxAmount_crateSupport];
			if ( _crateAmount > 0 ) then {
				[format ["%1 weitere Supportkisten stehen zur Verfügung.", _crateAmount - 1],5] call keko_fnc_timedHint;
				missionNamespace setVariable [_crateVariable,_crateAmount - 1,true];
			} else {
				["Von der ausgewählten Kategorie stehen keine weiteren Kisten mehr zur Verfügung.",5] call keko_fnc_timedHint;
			};
			KEKO_var_logistic_isBoxAvailable = if ( _crateAmount > 0 ) then { 1 } else { 0 };
		};
		default { KEKO_var_logistic_isBoxAvailable = 1; };
	};
} else {
	KEKO_var_logistic_isBoxAvailable = 1;
};

if ( KEKO_var_logistic_isBoxAvailable > 0 ) then {
	// Aufruf des ausgewählten Loadouts -> Übergabe aus Dialog
	_functionForAll = {
		private _target = _this select 0;
		private _pos = _this select 1;
		_target allowDamage false;
		[_target] call KEKO_fnc_clearCargo;
		_target setPosASL _pos;
		
		if ( _par_logisticDrop isEqualTo 1 ) then { [_target] call keko_fnc_dropLogistic; };
	};
	switch ( toUpper (_crateSelection) ) do {
		case "KEKO_LOGISTIC_CRATELARGE": {
			/*if (_locationCrateLarge isEqualTo [0,0,0]) exitWith {false};
			{deleteVehicle _x} count (nearestObjects [_locationCrateLarge, ["ReammoBox_F"], 8, true]);
			[KEKO_logistic_crateTypeLarge, _locationCrateLarge, KEKO_logistic_var_sidePrefix] spawn {
				params [
					["_type", "", [""]]
					,["_location", [0,0,0], [[]]]
					,["_prefix", "", [""]]
				];
				sleep 1;
				_box = createVehicle [_type,_location,[],0,"CAN_COLLIDE"];
				_box allowDamage false;
				_box setPosATL _location;
				[_box] call KEKO_fnc_clearCargo;
				if ( missionNamespace getVariable ["keko_par_customLoad",1] isEqualTo 1 ) then {
					[_box] remoteExec ["keko_fnc_gearsaving",0,true];
				};
				_function = format ["keko_%1%2",_prefix,"fnc_crateLarge"];
				[_box] remoteExecCall [_function,2];
			};*/



			_box = createVehicle [KEKO_logistic_crateTypeLarge,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateLarge",2];
			_return = _box;
		};		
		case "KEKO_LOGISTIC_CRATEGRENADES": {
			_box = createVehicle [KEKO_logistic_crateTypeGrenades,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateGrenades",2];
			_return = _box;
		};
		case "KEKO_LOGISTIC_CRATEEOD": {
			_box = createVehicle [KEKO_logistic_crateTypeEOD,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateEOD",2];
		};
		case "KEKO_LOGISTIC_CRATESTUFF": {
			_box = createVehicle [KEKO_logistic_crateTypeSupport,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateStuff",2];
		};
		case "KEKO_LOGISTIC_CRATETEAM": {
			_box = createVehicle [KEKO_logistic_crateTypeNormal,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateTeam",2];
		};
		case "KEKO_LOGISTIC_CRATENORMAL": {
			_box = createVehicle [KEKO_logistic_crateTypeNormal,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateNormal",2];
		};
		case "KEKO_LOGISTIC_CRATEMG": {
			_box = createVehicle [KEKO_logistic_crateTypeMG,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateMG",2];
		};
		case "KEKO_LOGISTIC_CRATEAT": {
			_box = createVehicle [KEKO_logistic_crateTypeAT,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateAT",2];
		};
		case "KEKO_LOGISTIC_CRATEAA": {
			_box = createVehicle [KEKO_logistic_crateTypeAA,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateAA",2];
		};
		case "KEKO_LOGISTIC_CRATEMEDIC": {
			_box = createVehicle [KEKO_logistic_crateTypeMedic,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateMedic",2];
		};
		case "KEKO_LOGISTIC_CRATESUPPORT": {
			_box = createVehicle [KEKO_logistic_crateTypeSupport,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
			[_box] remoteExecCall ["keko_fnc_crateSupport",2];
		};
		case "KEKO_LOGISTIC_WHEEL": {		
			_box = createVehicle ["ACE_Wheel",_position,[],0,"CAN_COLLIDE"];
			_box setPosASL _position;
		};
		case "KEKO_LOGISTIC_TRACK": {
			_box = createVehicle ["ACE_Track",_position,[],0,"CAN_COLLIDE"];
			_box setPosASL _position;
		};
		case "KEKO_LOGISTIC_CRATEDELETE": {
			{if(_x != gear_crate) then {deleteVehicle _x;};} count (nearestObjects [player, ["ReammoBox_F"], 3,true]);
			{deleteVehicle _x} count (nearestObjects [player, ["ACE_Wheel"], 3, true]);
			{deleteVehicle _x} count (nearestObjects [player, ["ACE_Track"], 3, true]);
			
			_box = false;
		};	
		case "KEKO_LOGISTIC_VEHICLE": {
			["Not yet implemented.",5] call keko_fnc_timedHint;

			/*_box = false;
			private _vehiclesInVicinity = nearestObjects [getPosWorld player, ["LANDVEHICLE"], 8, true];
			call {
				private _applicableVehicles = { (str _x) in KEKO_veh_all || (str _x) in KEKO_opf_veh_all || (str _x) in KEKO_ind_veh_all } count _vehiclesInVicinity;
				if ( _applicableVehicles isEqualTo 0 ) exitWith {
					["There's no applicable vehicle within 8 meter radius.",5] call keko_fnc_timedHint;
					_forcePlacement = true;
				};
				_vehiclesInVicinity remoteExecCall ["keko_fnc_clearCargo",2];
				switch ( side (group player) ) do {
					default { _vehiclesInVicinity remoteExecCall ["keko_fnc_addVehicleLoad",2]; };
					case east: { _vehiclesInVicinity remoteExecCall ["keko_opf_fnc_addVehicleLoad",2]; };
					case independent: { _vehiclesInVicinity remoteExecCall ["keko_opf_fnc_addVehicleLoad",2]; };
				};
				["Vehicle inventory replenished.",5] call keko_fnc_timedHint;
			};*/
		};
		case "KEKO_LOGISTIC_CRATEEMPTY": {
			_box = createVehicle [KEKO_logistic_crateTypeNormal,_position,[],0,"CAN_COLLIDE"];
			[_box,_position] call _functionForAll;
		};
		default {};
	};
};
if !(_forcePlacement) then {
	closeDialog 1;
};
_box;