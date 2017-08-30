{
	_prefix = (str _x) select [0,3];
	if ( toUpper (_prefix) == "LEA" ) then {
		_pos = getPos _x;
		_pos = _pos vectorAdd [0,0,2000];

		player setPos _pos;
	};
} forEach allPlayers;