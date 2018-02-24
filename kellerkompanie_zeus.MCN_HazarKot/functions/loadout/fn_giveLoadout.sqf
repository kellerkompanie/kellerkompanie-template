_prefix = _this select 1;
_overwrite = _this select 2;

if(!keko_loadout_variables_set) then {
	call keko_fnc_loadoutVariables;
};

_upper_prefix = toUpper (_prefix);
if(_overwrite) then {
	[nil, player, nil, _upper_prefix] call keko_fnc_applyLoadout;
} else {
	[player,_upper_prefix] remoteExec ["keko_fnc_loadoutExists", 2];
};
