_persistency_active = "param_persistent_loadout" call BIS_fnc_getParamValue;
if(_persistency_active == 0) exitWith{};

_time_interval = "param_persistent_regular_saves" call BIS_fnc_getParamValue;
if(_time_interval == 0) exitWith{};

diag_log "activating persistent saving";

while{true} do {
	sleep _time_interval;

	{
		diag_log "starting persistent loadout save ...";
		_x call keko_fnc_saveLoadoutDB;
		diag_log "... persistent loadout save";
	} forEach playableUnits;
};