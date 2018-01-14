// this file is executed on both server and clients

if (isServer) then {
	if (isClass (configFile >> "CfgPatches" >> "iniDBI")) then {
		call compile preProcessFile "\iniDB\init.sqf";
	};
};

waitUntil {time > 0};

if(isServer) then {
	[] spawn {[] call keko_fnc_regularSaving;};
};