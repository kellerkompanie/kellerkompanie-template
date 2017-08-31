//////////////////////////////////////////////////////////////////
// 
//LOADOUT ussf
//MADE BY Raspu
// 
//////////////////////////////////////////////////////////////////

disableSerialization;

//dialog
_display = _this select 0;
_listBox = _display displayCtrl 7377;
_comboBox = _display displayCtrl 7977;

// LBs leeren
lbClear _listBox;
lbClear _comboBox;

{ 
	lbAdd [7377, _x select 0];
	lbSetData [7377, _forEachIndex, _x select 1];
} forEach keko_crate_list;

true;