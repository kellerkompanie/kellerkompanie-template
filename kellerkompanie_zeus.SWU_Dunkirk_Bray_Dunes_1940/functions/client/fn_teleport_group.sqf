{
	_x_coord = 12006;
	_y_coord = 22460;
	_alt = 3000;

	_x_coord = _x_coord + (random [100,100,100]);
	_y_coord = _y_coord + (random [100,100,100]);
	_alt = _alt + (random [100,100,100]);

	_x setPos [_x_coord,_y_coord,_alt];} forEach units group player;