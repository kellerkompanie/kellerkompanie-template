_object = _this select 0;
_object addAction [("<t color='#33FFFF' size='2' align='center'>" + ("Logistik-Menü") + "</t>"), {createDialog "keko_logistic_mainDialog";}];
_object setVariable ["keko_logistic_delete", false];
_object allowDamage false;