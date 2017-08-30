// Ausrüstungsskript by James, 
// in Anlehnung an Maeh, Feldhobel
//hint str(_this);

_role = _this select 0; //String zur Datei

if (_role isEqualTo "") exitWith {};

// Aufruf des ausgewählten Loadouts -> Übergabe aus Dialog
//[player] call compile preprocessFileLineNumbers (format [_loadout,%1]);
//call compile format ["[player] call %1;", _loadout];

//hint str(_this);

[player, _role] call keko_fnc_giveLoadout;

closeDialog 1; // OK

true;