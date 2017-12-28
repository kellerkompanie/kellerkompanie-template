_prefix = _this select 1;

if(!keko_loadout_variables_set) then {
	call keko_fnc_loadoutVariables;
};

_upper_prefix = toUpper (_prefix);
[nil, player, nil, _upper_prefix] call keko_fnc_applyLoadout;