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
//_par_logisticTeam = missionNamespace getVariable ["KEKO_par_logisticTeam",1];
//_par_logisticAmount = missionNamespace getVariable ["adv_par_logisticAmount",99];
_par_logisticTeam = 3;

// LBs leeren
lbClear _listBox;
lbClear _comboBox;

//Loadout-Liste:
_loadoutList = [
	"Infanterie-Munition",
	"MMG-Munition",
	"AT-Raketen",
	"AA-Raketen",
	"Granaten",
	"Medic-Kiste",
	"Support-Kiste",
	"EOD-Kiste",
	"Leere Kiste",
	"",
	"Kisten in der Nähe löschen",
	"",
	"Ersatzreifen",
	"Ersatzkette",
	"",
	"Fire Team-Kiste",
	"Slingloading-Ausrüstungskiste",
	"Rations-Kiste"
];

/*if ( _par_logisticAmount > 2 ) then {
	_loadoutList append ["Fahrzeuginventar auffrischen"];
};*/

{ lbAdd [7377, _x] } foreach _loadoutList;

//Loadouts:
lbSetData [7377, 0, "KEKO_LOGISTIC_CRATENORMAL"];
lbSetData [7377, 1, "KEKO_LOGISTIC_CRATEMG"];
lbSetData [7377, 2, "KEKO_LOGISTIC_CRATEAT"];
lbSetData [7377, 3, "KEKO_LOGISTIC_CRATEAA"];
lbSetData [7377, 4, "KEKO_LOGISTIC_CRATEGRENADES"];
lbSetData [7377, 5, "KEKO_LOGISTIC_CRATEMEDIC"];
lbSetData [7377, 6, "KEKO_LOGISTIC_CRATESUPPORT"];
lbSetData [7377, 7, "KEKO_LOGISTIC_CRATEEOD"];
lbSetData [7377, 8, "KEKO_LOGISTIC_CRATEEMPTY"];
lbSetData [7377, 9, "KEKO_FNC_NIL"];
lbSetData [7377, 10, "KEKO_LOGISTIC_CRATEDELETE"];
lbSetData [7377, 11, "KEKO_FNC_NIL"];
_lbSetDataCount = 11;
_lbSetDataCount = _lbSetDataCount+1;
lbSetData [7377, _lbSetDataCount, "KEKO_LOGISTIC_WHEEL"];
_lbSetDataCount = _lbSetDataCount+1;
lbSetData [7377, _lbSetDataCount, "KEKO_LOGISTIC_TRACK"];	

/*if ( _par_logisticAmount > 2 ) then {
	_lbSetDataCount = _lbSetDataCount+1;
	lbSetData [7377, _lbSetDataCount, "KEKO_LOGISTIC_VEHICLE"];
};*/

_lbSetDataCount = _lbSetDataCount+1;
lbSetData [7377, _lbSetDataCount, "KEKO_FNC_NIL"];
_lbSetDataCount = _lbSetDataCount+1;
lbSetData [7377, _lbSetDataCount, "KEKO_LOGISTIC_CRATETEAM"];
_lbSetDataCount = _lbSetDataCount+1;
lbSetData [7377, _lbSetDataCount, "KEKO_LOGISTIC_CRATELARGE"]; 

_lbSetDataCount = _lbSetDataCount+1;
lbSetData [7377, _lbSetDataCount, "KEKO_LOGISTIC_CRATESTUFF"];

true;