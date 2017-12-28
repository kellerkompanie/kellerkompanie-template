_input = _this select 0;
_return = _input;

if(isNil "_input") exitWith{""};

if(["containsKey", _input] call keko_loadout_keywords) then {
	_return = ["get", _input] call keko_loadout_keywords;
};

_return