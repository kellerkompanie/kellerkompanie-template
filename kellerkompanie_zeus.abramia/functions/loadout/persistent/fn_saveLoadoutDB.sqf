params ["_unit"];

if(!isServer) exitWith{ diag_log "keko_persistency ERROR: code needs to be executed on server"; false; };

if(!isPlayer _unit) exitWith{ diag_log "keko_persistency ERROR: unit is not a player"; false; };

_puid = getPlayerUID _unit;
_key = missionNamespace getVariable ["keko_persistency_key", "PLACE_YOUR_KEY_HERE"];
_param_persistent_loadout = "param_persistent_loadout" call BIS_fnc_getParamValue;

if(_param_persistent_loadout == 0) exitWith { diag_log "keko_persistency ERROR: loadout saving disabled"; false; };

if(_key isEqualTo "PLACE_YOUR_KEY_HERE") exitWith {	diag_log "keko_persistency ERROR: no key set"; false; };

_unitFileName = format["%2_%1", _puid, _key]; 
_loadout = getUnitLoadout _unit;
_medicClass = _unit getVariable ["ace_medical_medicClass", 0];
_isEngineer = _unit getVariable ["ACE_isEngineer", 0];
_rank = rank _unit;

//diag_log format["_unitFileName: %1", str _unitFileName];
//diag_log format["_loadout: %1", str _loadout];
//diag_log format["_medicClass: %1", str _medicClass];
//diag_log format["_isEngineer: %1", str _isEngineer];
//diag_log format["_rank saved: %1", str _rank];

[_unitFileName, "loadout", "loadout", _loadout] call iniDB_write; 
[_unitFileName, "loadout", "medicClass", _medicClass] call iniDB_write;
[_unitFileName, "loadout", "isEngineer", _isEngineer] call iniDB_write;
[_unitFileName, "loadout", "rank", _rank] call iniDB_write;

//diag_log format["loadout saved for player %1", _puid];

true;