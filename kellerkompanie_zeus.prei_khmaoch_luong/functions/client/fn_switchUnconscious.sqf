params ["_unit", "_state"];

if!(_unit == player) exitWith{};

if(_state) then {
	// switch unit to civilian
	_isGroupLeader = leader group player == player;
	player setVariable["keko_side_before_unconscious", playerSide];
	player setVariable["keko_group_before_unconscious", group player];
	player setVariable["keko_leader_before_unconscious", _isGroupLeader];
	_civGroup = createGroup civilian;
	[player] joinSilent _civGroup;

} else {
	// switch unit back from civilian
	_isGroupLeader = player getVariable "keko_leader_before_unconscious";
	_side_before_unconscious = player getVariable "keko_side_before_unconscious";
	_group_before_unconscious = player getVariable ["keko_group_before_unconscious", createGroup _side_before_unconscious];
	[player] joinSilent _group_before_unconscious;

	if(_isGroupLeader) then {
		[group _unit, _unit] remoteExec ["selectLeader", groupOwner group _unit];
	};	
};