
profileNamespace setVariable ["keko_persistent_loadout_save", nil];

_key = "DEFAULT_KEY";
_version = 1;


_loadout = getUnitLoadout player;

_medicClass = player getVariable ["ace_medical_medicClass", 0];
_isEngineer = player getVariable ["ACE_isEngineer", 0];

_new_entry = [_key /*KEY*/, 1 /*VERSION*/, _loadout /*LOADOUT*/, [_medicClass /*ace_medical_medicClass*/, _isEngineer /*ACE_isEngineer*/]];

_persistent_save = profileNamespace getVariable "keko_persistent_loadout_save";
if(isNil "_persistent_save") then {
	_persistent_save = [];
};

_to_be_removed = -1;
{
	_entry = _x;

	_entry_key = _entry select 0;
	if(_entry_key isEqualTo _key) then {
		_to_be_removed = _forEachIndex;
	};
} forEach _persistent_save;

if (_to_be_removed != -1) then {
	_persistent_save set [_to_be_removed, _new_entry];
}
else {
	_persistent_save pushBack _new_entry;
};

profileNamespace setVariable ["keko_persistent_loadout_save", _persistent_save];
saveProfileNamespace;

["Loadout gespeichert",5] call keko_fnc_timedHint;
true;