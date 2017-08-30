/*
 * Author: Belbo
 * Modified by: Schwaggot
 *
 * Fills a crate with medic equipment for BLUFOR
 *
 * Arguments:
 * Array of objects - <ARRAY> of <OBJECTS>
 *
 * Return Value:
 * Function executed - <BOOL>
 *
 * Example:
 * [this] call adv_fnc_crateMedic;
 *
 * Public: Yes
 */

//mission variables and parameters:
if (isNil "_loadoutVariables") then {call keko_fnc_loadoutVariables;};

{
	private _target = _x;
	//makes the crates indestructible:
	_target allowDamage false;

	_target addItemCargoGlobal ["ACE_atropine",0];	// Atropin auto injector
	_target addItemCargoGlobal ["ACE_fieldDressing",50];	// Bandage (Basic)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_elasticBandage",50];	// Bandage (Elastic)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_quikclot",20];	// Basic Field Dressing (QuikClot)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_bloodIV",0];	// Blood IV (1000ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_bloodIV_500",0];	// Blood IV (500ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_bloodIV_250",0];	// Blood IV (250ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_bodyBag",4];	// Bodybag	ACE_ItemCore
	 
	_target addItemCargoGlobal ["ACE_epinephrine",10];	//Epinephrine auto injector	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_morphine",10];	//Morphine auto injector	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_packingBandage",0];	//Packing Bandage	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_personalAidKit",1];	//Personal Aid Kit	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_plasmaIV",0];	//Plasma IV (1000ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_plasmaIV_500",0];	//Plasma IV (500ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_plasmaIV_250",0];	//Plasma IV (250ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_salineIV",10];	//Saline IV (1000ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_salineIV_500",10];	//Saline IV (500ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_salineIV_250",0];	//Saline IV (250ml)	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_surgicalKit",2]; // Surgical Kit	ACE_ItemCore
	_target addItemCargoGlobal ["ACE_tourniquet",10];	// Tourniquet (CAT)	ACE_ItemCore

	_target addMagazineCargoGlobal ["SmokeShell",10];	
	
	nil;
} count _this;

true;