/*
 * Original Author: Belbo
 * Modified by: Schwaggot 
 *
 * Init organizer regulates the execution order of the init scripts. These are not executed in the regular initialization order.
 * Instead this function is called via preInit. The init scripts (working like regular init.sqf/initPlayerLocal.sqf/initServer.sqf) are spawned from this function only.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * None
 *
 * Public: No
 */

call compilefinal preprocessFileLineNumbers "scripts\oo_hashmap.sqf";

if (isServer) then {
	[] spawn keko_fnc_initServer;
};
if (hasInterface) then {
	[] spawn keko_fnc_initPlayerLocal;
};
[] spawn keko_fnc_init;