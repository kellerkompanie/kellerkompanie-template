class keko
{
	tag = "keko";
	class init
	{
		class initOrganizer { preInit = 1; };
		class init {};
		class initPlayerLocal {};
		class initServer {};
	};
	class logistics
	{
		class fillCrate {};
	};
	class logistics_internal
	{
		file = "functions\logistics\internal";
		class dialogLogInit {};
		class dialogLogistic {};
		class dropLogistic {};
	};
	class loadout
	{
		class applyLoadout {};
		class giveLoadout {};
		class loadoutVariables {};
		class replaceKeyword {};
	};
	class loadout_internal
	{
		file = "functions\loadout\internal";
		class dialogGearInit {};
		class dialogLoadout {};
	};
	class server
	{
		class createZeus {};
		class clearCargo {};
		class crate {};
	};
	class tfar
	{
		class setChannels {};
		class tfarSettings {};
		class giveRadio {};
		class setFrequencies {};
	};
	class client
	{
		class timedHint {};
	};
	class shared
	{
		class weather {};
	};	
	class preInit
	{
		class parVariables {};
	};
};

class MtB
{
	tag = "MtB";
	class randomWeather
	{
		class randomWeather {file = "scripts\randomWeather.sqf";};
	};
};
	