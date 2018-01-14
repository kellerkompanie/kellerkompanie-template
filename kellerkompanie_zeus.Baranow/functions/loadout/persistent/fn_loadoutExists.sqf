params["_player", "_upper_prefix"];

_puid = getPlayerUID _player;
_key = missionNamespace getVariable ["keko_persistency_key", "PLACE_YOUR_KEY_HERE"];
_unitFileName = format["%2_%1", _puid, _key]; 

_exists = _unitFileName call iniDB_exists;

if(_exists) then {
	// load from DB
	_player call keko_fnc_loadLoadoutDB;
}
else {
	// remote call on player
	//[nil, player, nil, _upper_prefix] call keko_fnc_applyLoadout;
	[nil, _player, nil, _upper_prefix] remoteExec ["keko_fnc_applyLoadout", _player];
};