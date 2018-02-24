// this file is executed on the clients

waitUntil {player == player};

waitUntil {time > 0};

if (player getVariable ["isSneaky",false]) then {
	[player] execVM "INC_undercover\Scripts\initUCR.sqf";
};


["ace_unconscious", keko_fnc_switchUnconscious] call CBA_fnc_addEventHandler;