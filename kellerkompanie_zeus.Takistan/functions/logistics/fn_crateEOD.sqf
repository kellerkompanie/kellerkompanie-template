/*
 * Author: Belbo
 *
 * Fills a crate with EOD equipment for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateEOD;
 *
 * Public: Yes
 */

//mission variables and parameters:
if(isNil "keko_loadout_variables_set" || !keko_loadout_variables_set) then {[] call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

	//_target addItemCargoGlobal ["ACE_Cellphone",4]; // Cellphone
	_target addItemCargoGlobal ["ACE_Clacker",2]; // M57 Firing Device
	_target addItemCargoGlobal ["ACE_M26_Clacker",2]; // M26 Firing Device
	_target addItemCargoGlobal ["ACE_DefusalKit",4]; // Defusal Kit
	//_target addItemCargoGlobal ["ACE_DeadManSwitch",2; // Dead Man’s Switch
	
	_target addItemCargoGlobal ["MineDetector",1];
	
	_target addItemCargoGlobal ["ToolKit",2];

	_target addWeaponCargoGlobal ["ACE_VMH3",2];
	_target addWeaponCargoGlobal ["ACE_VMM3",2];

	_target addItemCargoGlobal ["ATMine_Range_Mag",4];
	_target addItemCargoGlobal ["APERSTripMine_Wire_Mag",4];
	_target addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",4];
	_target addItemCargoGlobal ["SatchelCharge_Remote_Mag",4];
	_target addItemCargoGlobal ["DemoCharge_Remote_Mag",10];

	_target addItemCargoGlobal ["DemoCharge_Remote_Mag",10];

	_target addBackpackCargoGlobal [keko_loadout_backpack_engineer,2];
	
	nil;
} count _this;

true;