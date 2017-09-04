_object = _this select 0;
_object addAction [("<t color='#00FF00'>" + ("Save Loadout") + "</t>"), {[player] call keko_fnc_saveLoadout;}];
_object addAction [("<t color='#00FF00'>" + ("Load Loadout") + "</t>"), {[player] call keko_fnc_loadLoadout;}];
_object setVariable ["keko_logistic_delete", false];
_object allowDamage false;