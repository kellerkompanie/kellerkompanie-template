_object = _this select 0;
_object addAction [("<t color='#00FF00' size='2' align='center'>" + ("Loadout-Menü") + "</t>"), {createDialog "keko_loadouts_mainDialog";}];
_object setVariable ["keko_logistic_delete", false];
_object allowDamage false;