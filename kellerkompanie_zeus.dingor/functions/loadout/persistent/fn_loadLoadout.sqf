
_key = "DEFAULT_KEY";

_persistent_save = profileNamespace getVariable "keko_persistent_loadout_save";
if(isNil "_persistent_save") exitWith {	["Kein Speicherstand im Profil",5] call keko_fnc_timedHint; false; };


_index = -1;
{
	_entry = _x;

	_entry_key = _entry select 0;
	if(_entry_key isEqualTo _key) then {
		_index = _forEachIndex;
	};
} forEach _persistent_save;


if(_index == -1) exitWith { [(format ["Kein Speicherstand für Schlüssel: %1", _key]), 5] call keko_fnc_timedHint; false; };

_entry = _persistent_save select _index;

_version = _entry select 1;
_loadout = _entry select 2;
_vars = _entry select 3;
_medicClass = _vars select 0;
_isEngineer = _vars select 1;

player setUnitLoadout _loadout;
player setVariable ["ace_medical_medicClass", _medicClass, true];
player setVariable ["ACE_isEngineer", _isEngineer, true];

["Loadout geladen",5] call keko_fnc_timedHint;
true;