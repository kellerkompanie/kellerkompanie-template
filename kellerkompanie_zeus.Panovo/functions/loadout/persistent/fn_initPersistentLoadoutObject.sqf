_param_persistent_loadout = "param_persistent_loadout" call BIS_fnc_getParamValue;
if(_param_persistent_loadout == 0) exitWith { false; };

_object = _this select 0;
_object addAction [("<t color='#1E8449'>" + ("Save Loadout") + "</t>"), {[player] call keko_fnc_saveLoadout;}];
_object addAction [("<t color='#922B21'>" + ("Load Loadout") + "</t>"), {[player] call keko_fnc_loadLoadout;}];
_object setVariable ["keko_logistic_delete", false];
_object allowDamage false;