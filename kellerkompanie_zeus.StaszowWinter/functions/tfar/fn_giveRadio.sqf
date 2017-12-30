_param_give_radio = "param_give_radio" call BIS_fnc_getParamValue;

// give radio
if (_param_give_radio > 0) then {
	switch (_param_give_radio) do {
		case 1: {
			//Verstellbare für alle
			switch (side player) do {
				case west: {
					player linkItem "TFAR_anprc152";
				};
				case east: {
					player linkItem "TFAR_fadak";
				};
				case independent: {
					player linkItem "TFAR_anprc148jem";
				};
				default {};
			};
		};
		case 2: {
			//Verstellbare für Führungspos, sonst Personal
			switch (side player) do {
				case west: {
					player linkItem "TFAR_rf7800str";
				};
				case east: {
					player linkItem "TFAR_pnr1000a";
				};
				case independent: {
					player linkItem "TFAR_anprc154";
				};
				default {};
			};
		};
		case 3: {
			//Nur für Führungspos

			_prefix = (str player) select [0,3];
			if ( toUpper (_prefix) in ["CMD","LEA","SQL","FTL"] ) then {
				switch (side player) do {
					case west: {
						player linkItem "TFAR_anprc152";
					};
					case east: {
						player linkItem "TFAR_fadak";
					};
					case independent: {
						player linkItem "TFAR_anprc148jem";
					};
					default {};
				};
			};

		};
		default {};
	};
};