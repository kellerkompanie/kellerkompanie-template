_object = _this select 0;

if(!("respawn" in allMapMarkers)) then {
	createMarker ["respawn", position _object];
};