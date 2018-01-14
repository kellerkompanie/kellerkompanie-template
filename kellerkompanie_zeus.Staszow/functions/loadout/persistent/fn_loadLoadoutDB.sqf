params ["_unit"];

if(!isServer) exitWith{ diag_log "keko_persistency ERROR: code needs to be executed on server"; false; };

if(!isPlayer _unit) exitWith{ diag_log "keko_persistency ERROR: unit is not a player"; false; };

_puid = getPlayerUID _unit;
_key = missionNamespace getVariable ["keko_persistency_key", "PLACE_YOUR_KEY_HERE"];
_param_persistent_loadout = "param_persistent_loadout" call BIS_fnc_getParamValue;

if(_param_persistent_loadout == 0) exitWith { diag_log "keko_persistency ERROR: loadout saving disabled"; false; };

if(_key isEqualTo "PLACE_YOUR_KEY_HERE") exitWith {	diag_log "keko_persistency ERROR: no key set"; false; };

_unitFileName = format["%2_%1", _puid, _key]; 
_persistent_save = _unitFileName call iniDB_exists;
if(!_persistent_save) exitWith { diag_log "keko_persistency ERROR: no entry for player"; false; };


removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


_loadout = [_unitFileName, "loadout", "loadout", "ARRAY"] call iniDB_read; 
_medicClass = [_unitFileName, "loadout", "medicClass", "SCALAR"] call iniDB_read; 
_isEngineer = [_unitFileName, "loadout", "isEngineer", "SCALAR"] call iniDB_read; 
_rank = [_unitFileName, "loadout", "rank", "STRING"] call iniDB_read; 

_unit setUnitLoadout _loadout;
_unit setVariable ["ace_medical_medicClass", _medicClass, true];
_unit setVariable ["ACE_isEngineer", _isEngineer, true];
_unit setUnitRank _rank;

//diag_log format["loadout loaded for player %1", _puid];
true;