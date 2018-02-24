_roles = [
	"Leader",
	"Sergeant",
	"SQL",
	"FTL",
	"Rifleman",
	"Grenadier",
	"Marksman",
	"LMG",
	"LMG Asst.",
	"Rifleman AT",
	"Engineer",
	"Medic",
	"MMG",
	"MMG Asst.",
	"Missile Specialist AT",
	"Missile Specialist AT Asst.",
	"Missile Specialist AA",
	"Missile Specialist AA Asst.",
	"Pilot",
	"Explosive Specialist",
	"UAV Operator",
	"JTAC",
	"Sniper",
	"Spotter"
];

_script_param = [
	0, // Leader
	1, // Sergeant
	2, // SQL
	3, // FTL
	4, // Rifleman
	5, // Grenadier
	6, // Marksman
	7, // LMG
	8, // LMG Asst.
	9, // Rifleman AT
	10, // Engineer
	11, // Medic
	12, // MMG
	13, // MMG Asst.
	14, // Missile Specialist AT
	15, // Missile Specialist AT Asst.
	16, // Missile Specialist AA
	17, // Missile Specialist AA Asst.
	18, // Pilot
	19, // Explosive Specialist
	20, // UAV Operator
	21, // JTAC
	22, // Sniper
	23 // Spotter
];

_crates = [
	gear_crate_1,
	gear_crate_2,
	gear_crate_3
];

for [{_i=0}, {_i < count _crates}, {_i=_i+1}] do
{
	for [{_j=0}, {_j < count _roles}, {_j=_j+1}] do
	{
		(_crates select _i) addAction [(_roles select _j), {_this call keko_fnc_loadout}, _script_param select _j];
	};
};