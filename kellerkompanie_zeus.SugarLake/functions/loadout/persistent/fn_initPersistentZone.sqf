params ["_object", "_radius", "_name"];

_param_persistent_loadout = "param_persistent_loadout" call BIS_fnc_getParamValue;
if(_param_persistent_loadout == 0) exitWith { false; };

if(isServer) then {
	_radiusMarkerName = format["marker_%1_radius", _name];
	_centerMarkerName = format["marker_%1_center", _name];

	_markerRadius = createMarker [_radiusMarkerName, position _object];
	_radiusMarkerName setMarkerSize [_radius, _radius];
	_radiusMarkerName setMarkerBrush "Border";
	_radiusMarkerName setMarkerShape "ELLIPSE";
	_radiusMarkerName setMarkerColor "ColorOrange";

	_markerCenter = createMarker [_centerMarkerName, position _object];
	_centerMarkerName setMarkerSize [0.5, 0.5];
	_centerMarkerName setMarkerColor "ColorOrange";
	_centerMarkerName setMarkerText _name;
	_centerMarkerName setMarkerType "hd_flag";
};

_object addAction [("<t color='#1E8449'>" + ("Save Zone") + "</t>"), {[[_this select 3 select 0,_this select 3 select 1,_this select 3 select 2],"keko_fnc_saveZoneDB"] call BIS_fnc_MP;}, [_object,_radius,_name,player]];
_object addAction [("<t color='#922B21'>" + ("Load Zone") + "</t>"), {[[_this select 3 select 0,_this select 3 select 1,_this select 3 select 2],"keko_fnc_loadZoneDB"] call BIS_fnc_MP;}, [_object,_radius,_name,player]];
_object setVariable ["keko_logistic_delete", false];
_object allowDamage false;