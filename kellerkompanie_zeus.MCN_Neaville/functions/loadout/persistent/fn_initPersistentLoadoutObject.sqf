_param_persistent_loadout = "param_persistent_loadout" call BIS_fnc_getParamValue;
if(_param_persistent_loadout == 0) exitWith { false; };

_object = _this select 0;
_object addAction [("<t color='#1E8449'>" + ("Save Loadout") + "</t>"), {[player,"keko_fnc_saveLoadoutDB"] call BIS_fnc_MP;}];
_object addAction [("<t color='#922B21'>" + ("Load Loadout") + "</t>"), {[player,"keko_fnc_loadLoadoutDB"] call BIS_fnc_MP;}];
_object setVariable ["keko_logistic_delete", false];
_object allowDamage false;