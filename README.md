# Kellerkompanie Missionen/Zeus Template
Das Kellerkompanie Template dient dazu in kurzer Zeit Mission erstellen zu können, bei denen man davon ausgehen kann, dass technischer Natur (Settings/Loadouts etc.) alles funktioniert. Gleichzeitig dient es als universelles Zeus Template. Jeder, der eine Mission für die Kellerkompanie (http://kellerkompanie.com/) bauen will, ist angehalten dieses Template zu nutzen.

Das Template soll es ermöglichen auch über Modpack Updates hinweg eine Grundlage für den Bau von Missionen und für Zeus Missionen zu haben. Hinzu kommt, dass über die Standardisierung der Loadouts und Missionsparameter die üblichen Fehlerquellen wegfallen und somit ein gewisser Qualitätsstandard eingeführt wird.

## Credits
Besonderer Dank geht an Belbo von der Spezialeinheit Luchs (http://spezialeinheit-luchs.de/), viele der Ideen und Inhalte sind angelehnt an das ADV Template (https://github.com/Pergor/ADV_MissionTemplate). Dank geht auch an alle weiteren Autoren, die im Quellcode erwähnt sind.

## Unterschiede zum bisherigen System
+ Module mit Settings fallen weg, stattdessen werden die Einstellungen per Skript durchgeführt
+ Loadouts für Spieler werden nicht mehr im Editor sondern per Skritp zugewiesen (so kann sichergestellt werden, dass jeder immer alles dabei hat, war er braucht)
+ Metaeinstellungen wie Datum, Uhrzeit, Respawn etc. werden nicht mehr im Editor angegeben sondern per Skript
+ Die Loadoutkiste ist jetzt standardmäßig mit eingebaut, so können im Nachhinein noch Rollen getauscht werden
+ Spielerattribute wie bspw. Zuweisung von Medics erfolgt automatisch über die jeweilige Rolle

## Aufbau des Templates
Grundsätzlich besteht eine selbst erstellte ArmA 3 Editor Mission aus einem Ordner, der unter `..\Eigene Dokumente\Arma 3 - Other Profiles\<Profilname>\mpmissions\` liegt. Der Ordnername besteht dabei aus dem frei gewählten Namen und dem festen Kürzel für die jeweilige Karte. Wobei der Name der Mission nur aus ASCII Buchstaben (a-z, keine Umlaute etc.), Zahlen (0-9) und Unter- (_) sowie Bindestrichen (-) bestehen darf:
```
{Frei wählbarer Missionsname aus Zeichen a-z A-Z 0-9 _ -}.{ArmA Map Kürzel}
```
Beispiele:
```
Mogilevka.Chernarus
Siberian_Foxhound.Winthera3
kellerkompanie_zeus-v42.Mountains_ACR
```

Die Mission selbst (platzierte Gegenstände auf der Karte etc.) wird abgespeichert als `mission.sqm` in diesem Ordner. Alle weiteren Dateien sind grundsätzlich optional. Auch an dieser Stelle möchte ich nochmal darauf hinweisen, dass man **Missionen niemals in binarisierter Form speichern** sollte (Häkchen raus beim Speichern oder in den Editor Einstellungen). Es gibt bestimmte, von Bohemia oder Mods festgesetzte Dateinamen, die besondere Zwecke erfüllen und automatisch entsprechend verarbeitet werden. Die Dateien selbst können mit einem Texteditor eurer Wahl geöffnet werden, wobei sich Programme wie Notepad++ oder SublimeText deutlich besser eignen als Windows Notepad. Einige davon werden von dem Template benutzt:

|Datei-/*Ordnername*|Herkunft|Beschreibung|
|-----------------|--|--|
|cba_settings.sqf|@CBA_A3|enthält Einstellungen, die über CBA vorgenommen werden, z.B. TFAR oder ShackTac|
|description.ext|Bohemia|enthält Metainformationen über die Mission, z.B. Respawn Art, Missionsname etc.|
|init.sqf|Bohemia|Inhalt wird sowohl auf Server als auch Clients ausgeführt, siehe https://community.bistudio.com/wiki/Initialization_Order |
|initPlayerLocal.sqf|Bohemia|Inhalt wird beim Spieler lokal ausgeführt, siehe https://community.bistudio.com/wiki/Initialization_Order |
|initServer.sqf|Bohemia|Inhalt wird nur auf Server Seite ausgeführt, siehe https://community.bistudio.com/wiki/Initialization_Order |
|mission.sqm|Bohemia|enthält die Missionsdaten aus dem Editor, welche Einheit ist wo platziert etc.|
|*functions*|Template|enthält Skripte für die einzelnen Template Funktionen, wie bspw. Loadouts, Kisten etc.|
|*mission*|Tempalte|enthält die Config Dateien für die Missionsparameter, die zum Start der Mission ausgewählt werden können|
|*pictures*|Template|enthält etwaige Bilder, wie bspw. den Ladebildschirm|
|*scripts*|Template|enthält *externe* Skripte, wie bspw. zufälliges Wetter oder Atombomben etc.|

### Hash-Maps
Standardmäßig von Bohemia nicht mitgeliefert, wurde eine Implementierung von Hash-Maps (https://en.wikipedia.org/wiki/Hash_table) by Code34 hinzugefügt, wodurch gerade beim Thema Loadout und Kisten einiges dynamischer generiert werden kann. Die Quellen und Dokumentation dazu finden sich hier: https://forums.bistudio.com/forums/topic/171829-object-oriented-hashmap/

## Parameter
Die Einstellungen der einzelnen Module (ACE etc.) sind von Haus aus so eingestellt, dass sie dem Standard entsprechen. Nichtsdestotrotz kann man verschiedene Parameter einstellen. Dies mach man, indem man auf dem Server die Mission lädt und im Slotting Screen oben rechts auf Parameter geht. Dort kann man dann die Werte je nach Mission anpassen.
![](https://github.com/Schwaggot/kellerkompanie-template/blob/master/doc/parameter01.jpg?raw=true)
![](https://github.com/Schwaggot/kellerkompanie-template/blob/master/doc/parameter02.jpg?raw=true)

## Parameter Voreinstellung
Die Parameter Auswahl bei Missionbeginn ergibt am meisten Sinn bei spontanen Zeus Missionen. Bei vorgefertigten Missionen bietet es sich eher an die Standardeinstellung zu überschreiben. Dazu befinden sich im Ordner `mission` entsprechende `.hpp` Dateien, die die Parameter definieren:

|Name|Beschreibung|
|---|---|
|CfgACE.hpp|enthält die typischen ACE Einstellungen, welche so bei der Kellerkompanie standardmäßig benutzt werden. Diese sind mehr oder minder fest und können zumindest nicht bei der spontanen Zeus verändert werden.|
|CfgACEParams.hpp|enthält Parameter, die mit ACE zu tun haben und dynamisch bei Missionsstart angepasst werden können, bspw. Respawn Timer oder Blue Force Tracker.|
|CfgParams.hpp|enthält Parameter, welche spezifisch für das Template gemacht wurden und nicht direkt mit Bohemia oder Mods zu tun haben. Dort befinden sich bspw. Parameter, die das Loadout betreffen.|

Hier ein Ausschnitt aus `CfgParams.hpp`:
```
class param_give_gps
{
	title="Give GPS to players";
	values[] = {0,1,2,3,4};
	texts[] = {
		"No",
		"GPS",
		"GPS and MicroDAGR",
		"MicroDAGR",
		"cTab"
	};
	default = 4;
};
```
Der `class` Name gibt die Variable für diesen Parameter an, der `title` ist das was man nachher im Menü sieht und die `values` und `texts` sind die Auswahlmöglichkeiten, wobei beide Arrays sortiert sind (0=No,1=GPS,2=GPS and MicroDAGR,3=MicroDAGR,4=cTab"). Die Zeile `default = 4;`gibt an, dass wenn man nichts einstellt, standardmäßig die Option 4, also cTab ausgewählt wird. Wollt ihr in eurer Mission hingegen, dass die Leute mit GPS starten, so öffnet ihr die `CfgParams.hpp` mit einem Texteditor, ändert ihr die Zeile in `default = 1;` und speichert die Datei ab. Das könnt ihr mit allen Werten machen, die ihr für eure Mission individuell anpassen wollt. Analog funktioniert auch die `CfgACEParams.hpp`.

## Missionsobjekte
In den Templates sind neben den Spielereinheiten auch einige Objekte vorplatziert, die eine besondere Funktion haben und grundsätzlich nicht entfernt werden sollten. Die Objekte sind so eingestellt, dass sie keinen Schaden nehmen.
![](https://github.com/Schwaggot/kellerkompanie-template/blob/master/doc/missionobjects01.jpg?raw=true)
#### Loadout Crate
Die Loadout Crate wird mit dem Loadout Dialog initialisiert. Das heißt Spieler haben die Möglichkeit dort über das Mausradmenü in den Loadout Dialog zu kommen.
#### Logistics Flag
Ähnlich der Loadout Crate wird an diesem Objekt der Logistik Dialog verfügbar sein, über den man Kisten spawnen kann.
#### Respawn Helper
Sollte bisher kein Map Marker namens `respawn` gesetzt worden sein, wird an der Stelle dieses Objektes ein unsichtbarer Marker gesetzt und dadurch respawnt man an dieser Stelle.
#### Benutzerdefinierte Objekte
Wer seine eigenen Helper Objekte erstellen will, z.B. um an 2 verschiedenen Orten Loadoutkisten zu haben, der kann beliebige Objekte mit folgenden Scripten in der Init Zeile der Objekte erweitern, potentiell gehen auch mehrere Scripte auf demselben Objekt:

*Loadout Crate:*
`[this] call keko_fnc_initLoadoutObject;`

*Logistics Flag:*
`[this] call keko_fnc_initLogisticsObject;`

*Respawn Helper:*
`[this] call keko_fnc_initRespawnObject;`


## Rollen & Fraktionen
Zum Template gehören vorgefertigte Fraktionen für die Spieler und passende Loadouts für die Rollen. Diese sind in Skripten mit Variablen definiert und können beim Spawn Spielern zugewiesen werden oder später an der Loadout Kiste ingame erneut ausgewählt werden.
### Fraktionen
Zu den unterstützten Fraktionen (auswählbar in den Parametern bzw. `CfgParams.hpp`) gehören:

*Minimal:*
+ [Minimal] NATO - North Atlantic Treaty Organization
+ [Minimal] AAF  - Altis Armed Forces
+ [Minimal] CSAT - Canton-Protocol Strategic Alliance Treaty
+ [Minimal] FIA  - Freedom and Independence Army
+ [Minimal] CTRG - Combat Technology Research Group
+ [Minimal] Guerilla
+ [Minimal] IDAP - International Development & Aid Project

*Minimal/APEX:*
+ [Minimal][APEX] NATO Tropical
+ [Minimal][APEX] CTRG Tropical
+ [Minimal][APEX] CSAT Viper
+ [Minimal][APEX] Syndikat (Bandits)
+ [Minimal][APEX] Syndikat (Paramilitary)
+ [Minimal][APEX] Gendamerie

*United States:*
+ [Main] U.S. Army - Operational Camouflage Pattern
+ [Main] U.S. Army - Universal Camouflage Pattern
+ [Main] U.S. Army Rangers - Woodland
+ [Main] U.S. Army Rangers - Desert
+ [Main] U.S. Marine Corps - Marine Pattern Desert
+ [Main] U.S. Marine Corps - Marine Pattern Woodland
+ [Main] U.S. MARSOC - Marine Corps Forces Special Operations Command

*British:*
+ [Main] British Armed Forces - Multi-Terrain Pattern
+ [Main] British Armed Forces - Arctic Multi-Terrain Pattern
+ [Main] British Armed Forces - Arctic White
+ [Main] British Armed Forces - Temperate
+ [Main] British Armed Forces - Woodland		
+ [Main] British Armed Forces - Desert

*Deutschland:*
+ [Main] Bundeswehr - Flecktarn
+ [Main] Bundeswehr - Tropentarn
+ [Main] Bundeswehr - KSK Fleck
+ [Main] Bundeswehr - KSK Tropen
+ [Main] Polizei (SEK) Zivil
+ [Main] GSG9

*Black Order:*
+ [Main] Black Order
+ [Main] Black Order - Special Forces
+ [Main] Black Order - Early Years
+ [Main] Black Order - Red Berets

*Asia:*
+ [Main] Japan - Self-Defense Forces		
+ [Main] China - PLA Woodland
+ [Main] China - PLA Desert

*Middle-East:*
+ [Main] Israel Defense Forces

*Russia:*
+ [Main] Foxhound Siberian Guard

Die einzelnen Fraktionen sind definiert in den dazugehörigen .sqf Dateien im Ordner `functions\loadout\factions`. Dort werden jeweils die Uniformen, Westen, Helme, Waffen, Items etc. definiert, die zu dieser Fraktion gehören. In ArmA ist es so, dass eine Waffe wie die Vanilla NATO MX als Objekt existiert und mit einem String, der die class beschreibt referenziert werden kann, für die MX ist dies bspw. `"arifle_MX_F"`. Es gibt verschiedene Wege an diese Variablen zu kommen, teilweise gibt es vorgefertigte Listen im Internet (bspw. im Bohemia Wiki), teilweise muss man sie sich selbst zusammensuchen. Am einfachsten geht dies wenn man sich im Virtual Arsenal die Figur passend zurecht stellt und dann über STRG+C oder den Export Button am unteren Bildschirmrand das Loadout exportiert. Dabei wird das Loadout in die Zwischenablage kopiert und man kann es sich dann in einen Texteditor einfügen. Das Ganze sieht dann bspw. so aus:

```
comment "Exported from Arsenal by Schwaggot";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "U_B_CombatUniform_mcam";
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {this addItemToUniform "30Rnd_65x39_caseless_mag";};
this addVest "V_PlateCarrier1_rgr";
for "_i" from 1 to 7 do {this addItemToVest "30Rnd_65x39_caseless_mag";};
for "_i" from 1 to 2 do {this addItemToVest "16Rnd_9x21_Mag";};
this addItemToVest "SmokeShell";
this addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {this addItemToVest "HandGrenade";};
this addHeadgear "H_HelmetB";

comment "Add weapons";
this addWeapon "arifle_MX_F";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_Aco";
this addWeapon "hgun_P07_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "NVGoggles";

comment "Set identity";
this setFace "WhiteHead_15";
this setSpeaker "male06eng";
```
Dabei werden jeweils zeilenweise von oben nach unten die Befehle ausgeführt und die Figur bekommt auf diese Weise ihr Loadout. Nun kann man hingehen und bspw. die Bezeichnung der Uniform rauskopieren: Die Zeile `this forceAddUniform "U_B_CombatUniform_mcam";` sagt aus, dass `this` also der Figur in dem Fall die Uniform `"U_B_CombatUniform_mcam"` zugewiesen werden soll. Möchtet ihr nun eine benutzerdefinierte Fraktion erstellen oder etwas anpassen, kommt ihr auf diese Art und Weise an die Bezeichnungen für die einzelnen Kleidungsteile, Items, Waffen etc.

Die Zuordnung der einzelnen Dateien zu den Fraktionen findet in der Datei `functions\loadout\fn_loadoutVariables.sqf` statt. Die Auswahl der Fraktion findet über Parameter statt, welche man auch in der Datei `mission\CfgParams.hpp` findet und verändern kann. Dabei ist darauf zu achten, dass die Zahlen jeweils zu den Bezeichnungen und zu den Dateien passen.

Als besondere Fraktion ist `Custom` anzusehen, diese ist explizit für Missionsbauer gedacht, die ihr eigenes Loadout für eine Mission erstellen wollen um nicht eine vorhandene Fraktion überschreiben zu müssen. Der Autor übernimmt dabei natürlich die Verwantwortung für die Richtigkeit des Loadouts.


### Spawn Loadout & Rollen
Das Loadout beim Spawn und die Rollenverteilung wird über die Variable der Spielerfigur geregelt. Das heißt, man stellt einfach einen Rifleman hin, macht ihn playable und gibt ihm als Variablennamen `rif_1` wobei die ersten 3 Buchstaben benutzt werden um die Rolle und damit das Loadout zu bestimmen und die Endung nur dazu dient verschiedene Spieler mit gleichen Rollen zu haben. Demnach steht also `rif` für Rifleman und die `_1` als Endung um ihn von anderen zu unterscheiden, da in ArmA alle Variablen für Objekte unterschiedliche Namen haben müssen. Der nächste würde dann `rif_2` heißen. Ich empfehle grundsätzlich die Endung _<Zahl> da der Editor dann beim Kopieren automatisch hochzählt. Kopiere ich die Spielfigur `rif_2` dann erstellt der Editor die neue Einheit automatisch als `rif_3` und man spart sich Arbeit. Folgende Prefixe sind bei den meisten Fraktionen vordefiniert:

|Prefix|Rolle|
|---|---|
|`CMD`|Zeus|
|`LEA`|Lead|
|`SER`|Sergeant|
|`DOC`|Doctor|
|`SQL`|Squad Leader|
|`FTL`|Fire Team Leader|
|`MED`|Medic|
|`RIF`|Rifleman|
|`RAT`|Rifleman AT|
|`GRE`|Grenadier|
|`MAR`|Marksman|
|`LMG`|Light Machine Gunner|
|`LAS`|Light Machine Gunner Asst.|
|`MMG`|Medium Machine Gunner|
|`MAS`|Medium Machine Gunner|
|`SAT`|AT Specialist|
|`AAT`|AT Specialist Asst.|
|`SAA`|AA Specialist|
|`AAA`|AA Specialist Asst.|
|`EOD`|Explosive Ordanance Disposal|
|`ENG`|Engineer|
|`PIL`|Pilot|
|`UAV`|UAV Operator|
|`JTC`|JTAC|
|`SNI`|Sniper|
|`SPO`|Spotter|

Guckt man sich die Dateien der einzelnen Fraktionen im Ordner `functions\loadout\factions` genauer an, so sieht man, dass zunächst die verfügbaren Rollen für diese Fraktion definiert werden. Die Rollen werden definiert über das Array `keko_loadout_list`, welches Tupel enthält aus Name der Rolle (wie sie im Loadout Dialog vorkommt) und dem Kürzel (bspw. "RIF"). Das Kürzel wiederum wird verwendet um das konkrete Loadout dieser Rolle zu bestimmen. 

Die Zeile `["put", ["MED", ["V_PlateCarrierSpec_rgr"]]] call keko_loadout_vest;` besagt bspw. dass die Rolle mit dem Kürzel `MED` (in diesem Fall Medic) die Weste mit der class `V_PlateCarrierSpec_rgr` erhalten soll. Soll beim zuweisen der Loadouts zwischen verschiedenen classes zufällig ausgewählt werden, so übergibt man mehrere Parameter über das Array, bpsw. `["put", ["PIL", ["H_PilotHelmetHeli_B","H_HelmetSpecB"]]] call keko_loadout_helmet;`. Wann immer jemand spawnt oder an die Loadout Kiste geht wird nun für die Rolle des Piloten (Kürzel `PIL`) zufällig zwischen dem Helm `H_PilotHelmetHeli_B` und `H_HelmetSpecB` ausgewählt. Man erhält auf diese Art und Weise eine gewisse Abwechslung im Loadout und nicht alle sehen gleich aus.

Gewisse Faktoren, die über alle Fraktionen hinweg gleich sind wurden ausgelagert in die Datei `functions\loadout\fn_loadoutVariables.sqf`, so z.B. der Standardinhalt eines Medic Rucksacks: `keko_loadout_backpack_inventory_med = [[50, "ACE_elasticBandage"],[20, "ACE_fieldDressing"],[6, "ACE_salineIV_500"],[4, "ACE_salineIV"],[10, "ACE_tourniquet"],[10,"adv_aceSplint_splint"]];`. Das Array aus Tupeln gibt dabei die einzelnen Items und ihre Menge an wie sie nachher in den Rucksack hinzugefügt werden.

Es können bei Bedarf weitere Kürzel hinzugefügt werden, es sollte allerdings darauf geachtet werden, dass diese nur aus Großbuchstaben bestehen und immer genau 3 Buchstaben haben. Auch sollten Überschneidungen zu bisher definierten Kürzeln vermieden werden.


### Loadout Keywords
Abgesehen von den vorgegebenen Item classnames und Kürzeln gibt es auch weitere Schlüsselwörter, die besondere Bedeutungen besitzen. Das Rollenkürzel `DEFAULT` wird dazu verwendet die Standardausrüstung eines Spielers zu bestimmen, wenn seine Rolle sonst nicht konkretisiert wurde. Dies bedeutet aber auch, dass wenn für das Kürzel `LEA` keine besondere Waffe definiert wurde, dass dann auf die in `DEFAULT` definierte zurückgegriffen wird. Will man standardmäßig nichts zuweisen so übergibt man einfach ein leeres Array.

Als weitere Schlüsselwörter werden alle Strings angesehen, die mit einem `#` anfangen. Zu Beginn einer Definition einer Fraktion werden in `keko_loadout_keywords` die für diese Fraktion existierenden Schlüsselwörter mit passenden Werten initialisiert. In der NATO Fraktion besagt bspw. die Zeile `["put", ["#PRIMARY_MAG", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;` dass wenn das Schlüsselwort `#PRIMARY_MAG` benutzt wird, es dann automatisch durch `30Rnd_65x39_caseless_mag` ersetzt wird. Im Endeffekt funktionieren die Keywords wie einfache Makros. Warum es so umständlich gemacht wird, ist relativ einfach, man kann jetzt nämlich zentral festlegen, dass bspw. das Standard Loadout einer Uniform immer aus Bandangen, Morphium etc. besteht und aus 1x `#SECONDARY_MAG`, 1x `#SMOKE_WHITE` und 1x `#SMOKE_GREEN`. Dies kann unabhängig von der Fraktion und dem konkreten classname festgelegt werden und wird dann zur Laufzeit mit dem passenden Gegenstand aus der Fraktion ersetzt. So wird bspw. sichergestellt, dass jeder Soldat immer ein gewisses Grundloadout bekommt (jedenfalls solange man die Variablen nicht überschreibt).

Desweiteren werden mithilfe dieser Keywords auch die Inhalte der Logistik Kisten bestimmt. Man gibt dann bspw. an, dass eine Infanterie Munitionskiste jeweils 10 von `#PRIMARY_MAG`, `#PRIMARY_MAG_TRACER` und `#PRIMARY_MAG_LMG` enthält und diese werden dann passend zu der Fraktion mit den konkreten classnames bestückt.

Potentiell können weitere, benutzerdefinierte Schlüsselwörter angelegt und benutzt werden. Um Überschneidungen mit vorhanden classnames zu vermeiden wird als Konvention voran ein `#` gesetzt und der Rest groß geschrieben.


## Logistik Kisten
An der Fahne in der Base können standardmäßig Kisten generiert werden, welche für die jeweilige Fraktion den passenden Inhalt haben, also von den Magazinen etc. her zugeschnitten sind auf die Waffen, die ausgeteilt wurden. Die Interaktion erfolgt ähnlich wie beim Laodout über das Mausradmenü und einen Logistik Dialog. 

Welche Kisten für welche Fraktion zur Verfügung stehen wird über das Array `keko_crate_list` definiert. Standardmäßig befindet sich die Definition in `functions\loadout\fn_loadoutVariables.sqf`, kann jedoch nach belieben in den einzelnen Fraktionen überschrieben werden. Folgende Arten von Kisten werden standardmäßig unterstützt:

|Kürzel|Kiste|
|---|---|
|`LOGISTIC_CRATE_FT`|Fire-Team Kiste, enthält Zeug um ein normales Fire-Team zu versorgen.|
|`LOGISTIC_CRATE_INF`|Infanterie Kiste, enthält eine Ladung Standard Infanterie Munition.|
|`LOGISTIC_CRATE_GRE`|Granaten Kiste, enthält Rauchgranaten, Sprengranate, ULGs usw.|
|`LOGISTIC_CRATE_MG`|MG Kiste, enthält Munition für LMGs und MMGs.|
|`LOGISTIC_CRATE_AT`|AT Kiste, enthält Einmalwerfer und Munition für Mehrfachwerfer.|
|`LOGISTIC_CRATE_AA`|AA Kiste, enthält Munition für Luftabwehrlauncher.|
|`LOGISTIC_CRATE_MED`|Medic Kiste, enthält medizinisches Material.|
|`LOGISTIC_CRATE_SUP`|Support Kiste, enthält alles mögliche, von Sandbags bis Rangecards.|
|`LOGISTIC_CRATE_EOD`|Sprengmittel Kiste, enthält Zeug zum Sprengen und Entschärfen.|
|`LOGISTIC_CRATE_RATIONS`|Rationen Kiste, enthält Zigaretten, Bananen etc.|
|`LOGISTIC_CRATE_EMPTY`|Leere Kiste, enthält nichts.|

Der Standardinhalt der Kisten wird ebenfalls in `functions\loadout\fn_loadoutVariables.sqf` festgelegt und benutzt die Keywords um passende Magazine für die Fraktion zur Verfügung zu stellen. Beispiel:

```
keko_logistic_crate_at_content = [
	[1, "#SAT_LAUNCHER", "WEAPON"],
	[4, "#AT_MAG", "AMMO"],
	[1, "#BACKPACK_SPECIALIST", "ITEM"],
	[4, "#RAT_LAUNCHER", "WEAPON"]
];
```
Dabei muss jeweils auch angegeben um welche Art von Item es sich handelt, da je nachdem andere Funktionen benutzt werden müssen um das Item in die Kiste zu befördern (thx Bohemia). Aktuell wird unterschieden zwischen `AMMO`, `ITEM`, `WEAPON` und `BACKPACK`. Auch die genauen Inhalte der Kisten können bei Bedarf je nach Fraktion überschrieben werden. Man kann auch neue Kisten mit neuen Kürzeln und anderen Kistenarten hinzufügen. Die Art der Kiste (also das Objekt ingame) selbst wird in den Tripeln aus `keko_crate_list` bestimmt. Die normalen Vanilla Kisten sind aufgelistet in `functions\loadout\fn_loadoutVariables.sqf`.

Bei Betätigung des Logistik Dialogs werden die Kisten unter den Füßen des jeweiligen Aufrufers gespawnt. Möchte man mehrere Kisten spawnen, sollte man immer zur Seite gehen nach jeder Kiste, damit diese nicht ineinander spawnen und durch die Gegend fliegen. Die Kisten selbst sind so eingstellt, dass sie keinen Schaden nehmen können und somit auch nicht explodieren. Interessanter Fakt ist auch, dass wenn man per Zeus eine Einheit fernsteuert und den Logistik Dialog bedient, die Kiste nicht bei der ferngesteuerten Einheit, sondern beim Zeus unter den Füßen generiert wird.

Neben den Kisten selbst gibt es noch einige verfügbare Zusatzfunktionen:

|Kürzel|Funktion|
|---|---|
|`LOGISTIC_WHEEL`|Spawnt ein ACE Ersatzrad.|
|`LOGISTIC_TRACK`|Spawnt eine ACE Ersatzkette.|
|`LOGISTIC_FNC_DELETE`|Entfernt alle Kisten in der Nähe der Fahne.|



## Anwedungsbeispiele
### Mission als Zeus
### Eigene Mission erstellen
### Loadout anpassen
### Eigene Rolle erstellen
### Eigene Fraktion/Loadouts erstellen
Fragestellung: Wie erstelle ich eine eigene Fraktion inkl. Loadouts, sodass alle bei Spawn die richtige Ausrüstung bekommen?

Benötigt wird:
- 1x Kellerkompanie Template nach Wahl (einfach runterladen nach MPMissions entpacken, damit werden wir unsere Fraktion testen)
- Text Editor nach Wahl (ich bevorzuge Sublime Text mit C Syntax Highlighting, macht das Leben leichter)
- ArmA3 Eden Editor/Virtual Arsenal

Zunächst zum grundlegenden Aufbau, im Template Ordner befinden sich die Fraktionen unter `functions\loadout\factions`, jede der Fraktionen wird in einer separaten `.sqf` Datei definiert. Diese Dateien lassen sich einfach mit einem Texteditor öffnen. Ihr habt mehrere Möglichkeiten:
- vorhandene Fraktionen editieren
- die Custom Fraktion editieren
- ganz neue Fraktion/Datei erstellen
Wobei letzere Option nicht ganz so einfach ist und später erklärt wird, bei den anderen beiden kann man nachher einfach die Fraktion bei Missionsstart auswählen.

#### Rollen
Wenn wir rein schauen sehen wir ganz oben erstmal die Liste mit Rollen, die in unserer Fraktion verfügbar sind, als Beispiel hier der Anfang von `001_nato.sqf`:
```
keko_loadout_list = [
	["---- Führung ----", ""], //0
	["Platoon Lead", "LEA"], //1
	["Platoon Sergeant", "SER"], //2
	["Platoon Medic", "DOC"], //3
	["Squad Leader", "SQL"], //4
	["Fireteam Leader", "FTL"], //5
	["Combat Life Saver", "MED"], //6
	["---- Plebs ----", ""], //7
	["Rifleman", "RIF"], //8
	["Rifleman Anti-Tank", "RAT"], //9
	["Grenadier", "GRE"], //10
	["Light Machine Gunner", "LMG"], //11
	["Light Machine Gunner Asst.", "LAS"], //12
	["---- Heavy Weapons ----", ""], //13
	["Medium Machine Gunner", "MMG"], //14
	["Medium Machine Gunner Asst.", "MAS"], //15
	["Missile Specialist Anti-Tank", "SAT"], //16
	["Missile Specialist Anti-Tank Asst.", "AAT"], //17
	["Missile Specialist Anti-Air", "SAA"], //18
	["Missile Specialist Anti-Air Asst.", "AAA"], //19
	["---- Support ----", ""], //20
	["Marksman", "MAR"], //21
	["Sniper", "SNI"], //22
	["Spotter", "SPO"], //23
	["Explosive Specialist", "EOD"], //24
	["Engineer", "ENG"], //25
	["Pilot", "PIL"], //26
	["Forward Air Controller", "JTC"], //27
	["UAV Operator", "UAV"] //28
];
```
Das ist im Endeffekt eine Liste, die besagt welche Rollen vom Script vergeben werden können und im Loadout-Menü ausgewählt werden können. Links steht jeweils der für Menschen lesbare Name, also bspw. `"Light Machine Gunner"` und rechts das Kürzel, welches intern vom Script verwendet wird um die Rollen zu unterscheiden (`"LMG"`). Die Kürzel sollten immer aus 3 Großbuchstaben bestehen und eindeutig sein. Die Zahlen hinter den `//` sind reine Kommentare aus früheren Zeiten und können ignoriert oder sogar gelöscht werden, sie werden von ArmA sowieso ignoriert bei der Ausführung.

Diese Liste von Rollen kann man jetzt nach Lust und Laune editieren. Man kann bspw. vorhande Rollen umbennenen wenn dies besser zur Fraktion passt. Wir bennenen jetzt den Platoon Medic einfach in Arzt um indem wir die Zeile wie folgt abändern `["Arzt", "DOC"],`. Achtet aber immer darauf, dass euch keine Hochkommata `"`, normale Kommas oder eckige Klammern fehlen gehen, da ihr sonst Syntaxfehler bekommt und im schlechtesten Fall gar nix mehr funktioniert.

Mann kann ebenfalls weitere Rollen einfach hinzufügen, muss nur darauf achten, dass die Kürzel eindeutig sind, also nicht mit einem anderen aus der Liste gleichen und man die Zeichensetzung beachtet. Hinter jedem Eintrag in der Liste `[..]` muss ein Komma folgen, außer beim letzten Element, dort keines. Ein kleines Beispiel wie dies komplett custom aussehen könnte:

```
keko_loadout_list = [
	["---- Polizei ----", ""], 
	["Oberkommissar", "OBK"], 
	["Kommissar", "KOM"],
	["Sanitäter", "SAN"],	
	["---- Zivilist ----", ""],
	["Bürger", "BUE"],
	["Arzt", "ARZ"]	
];
```

Die Trennzeichen dazwischen, also `["---- Zivilist ----", ""]` können benutzt werden um einzelne Kategorien zu unterscheiden, sind aber ansonsten total optional, nur darauf achten, dass man ein leeres Kürzel angibt, also `""`.

#### Loadout der Rollen
So nun zum spannenden Teil, den einzelnen Rollen entsprechende Loadouts zuordnen. Die Einstiegshürde ist etwas höher, aber sobald man das Konzept verstanden hat sollte es einfacher werden. Wir sehen uns nochmal den Anfang von `001_nato.sqf` an:
```
["put", ["#PRIMARY_MAG", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;	
["put", ["#PRIMARY_MAG_TRACER", "30Rnd_65x39_caseless_mag_Tracer"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MARKSMAN_TRACER", "30Rnd_65x39_caseless_mag"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_LMG", "100Rnd_65x39_caseless_mag_Tracer"]] call keko_loadout_keywords;
["put", ["#PRIMARY_MAG_MMG", "130Rnd_338_Mag"]] call keko_loadout_keywords;
["put", ["#SECONDARY_MAG", "11Rnd_45ACP_Mag"]] call keko_loadout_keywords;
["put", ["#GRENADIER_MAG", "1Rnd_HE_Grenade_shell"]] call keko_loadout_keywords;
["put", ["#AT_MAG", "Titan_AT"]] call keko_loadout_keywords;
["put", ["#AA_MAG", "Titan_AA"]] call keko_loadout_keywords;
["put", ["#GRENADE", "HandGrenade"]] call keko_loadout_keywords;
["put", ["#SMOKE_WHITE", "SmokeShell"]] call keko_loadout_keywords;
["put", ["#SMOKE_GREEN", "SmokeShellGreen"]] call keko_loadout_keywords;
["put", ["#BACKPACK_RADIO", "TFAR_rt1523g_rhs"]] call keko_loadout_keywords;
["put", ["#BACKPACK_MED", "B_Kitbag_mcamo"]] call keko_loadout_keywords;
["put", ["#BACKPACK_AUTORIFLE", "B_FieldPack_khk"]] call keko_loadout_keywords;
["put", ["#BACKPACK_ENGINEER", "B_Carryall_cbr"]] call keko_loadout_keywords;
["put", ["#BACKPACK_SPECIALIST", "B_FieldPack_cbr"]] call keko_loadout_keywords;
["put", ["#RAT_LAUNCHER", "launch_NLAW_F"]] call keko_loadout_keywords;
["put", ["#SAT_LAUNCHER", "launch_B_Titan_short_F"]] call keko_loadout_keywords;
["put", ["#SAA_LAUNCHER", "launch_B_Titan_F"]] call keko_loadout_keywords;
```
Wie man sieht, was sich von Zeile zu Zeile unterscheidet ist das zwischen den beiden inneren eckigen Klammern, also `["#PRIMARY_MAG", "30Rnd_65x39_caseless_mag"]`. Das ist ein Tupel oder auch Pärchen genannt, ähnlich wie bei den Rollen oben wo links der leserliche Name und rechts das Kürzel war, erhalten wir hier links den Schlüssel und rechts den Wert. Es findet eine Zuordnung statt `"#PRIMARY_MAG"` (links) wird nachher durch `"30Rnd_65x39_caseless_mag"` (rechts) ersetzt werden überall wo es vorkommt. Das erkennt man daran, dass die Schlüssel mit einem `#` anfangen. Hintergrund der ganzen Sache ist, dass hier die allgemeinen Gegenstände definiert werden, die von Fraktion zu Fraktion unterschiedlich sind, die Namen sollten größtenteils selbstverändlich sein. Diese Schlüssel werden nachher benutzt um die Westen/Uniformen etc. mit den zur Waffe passenden Magazinen etc. zu füllen. Statt beim Rifleman zu sagen der bekommt 6x 5.56mm NATO Munition gibt man dann an: der Rifleman bekommt 6x das #PRIMARY_MAG. Wenn man sich dann später entscheidet die Waffe zu wechseln muss man die Munition nur an einer Stelle anpassen und entsprechend können auch Kisten direkt mit der richtigen Munition gefüllt werden.

Gucken wir uns nun die nächsten Zeilen an, dort werden jetzt pro Rolle jeweils die einzelnen Loadouts zugewiesen:
```
["put", ["DEFAULT", ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn"]]] call keko_loadout_uniform;
["put", ["LEA", ["U_B_CombatUniform_mcam"]]] call keko_loadout_uniform;
["put", ["PIL", ["U_B_HeliPilotCoveralls"]]] call keko_loadout_uniform;	
["put", ["SNI", ["U_B_FullGhillie_sard"]]] call keko_loadout_uniform;
["put", ["SPO", ["U_B_FullGhillie_sard"]]] call keko_loadout_uniform;
```
Hier kommen nun wieder die Kürzel der einzelnen Rollen ins Spiel. In dem Beispiel werden hier die Uniformen zugeordnet, erkennbar daran, dass zum Schluss der Zeile jeweils `keko_loadout_uniform` steht. Aber was passiert hier jetzt genau? In Zeile 1 `["put", ["DEFAULT", ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn"]]] call keko_loadout_uniform;` haben wir nach selbem Muster wie bisher wieder ein Tupel, nämlich `["DEFAULT", ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn"]]`, das heißt dem Schlüssel `"DEFAULT"` wird die Liste von möglichen Uniformen `["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn"]` zugeordnet. Beim zuweisen des Loadouts wird dann zufällig ein Element aus dieser Liste genommen und als Uniform verwendet, damit man ein bisschen wechsel drin hat. 

Will man für eine bestimmte Rolle auf jeden Fall genau eine Uniform zulassen, so macht man nur ein Element in die Liste, wie bspw. in der Zeile von `"LEA"`. Dem Kürzel der Rolle (LEA=Platoon Lead) wird dabei die Uniform mit ArmA Itembezeichnung `U_B_CombatUniform_mcam` zugewiesen. Auf selbe Art und Weise funktionieren auch die weiteren Gegenstände, wie Helme, Westen usw.

#### Der DEFAULT Schlüssel
Der Schlüssel `"DEFAULT"` wird dazu benutzt die absolute Standard Ausrüstung zu definieren, die sich alle teilen. Im Regelfall entspricht diese Ausrüstung dem normalen Rifleman. Man beachte, dass man nicht unbedingt für jede Rolle/Kürzel die genaue Ausrüstung defnieren muss. Lasse ich bspw. beim Platoon Lead (LEA) die Zuweisung der Primärwaffe weg, so wird im automatisch die in DEFAULT definierte Waffe zugewiesen. Dies gilt analog für alle Items und Klassen.

#### Wie komme ich an die Itembezeichnungen?
Ihr öffnet ArmA3, geht entweder ins Virtual Arsenal oder per Editor in die Loadout Anpassung (im Endeffekt wieder Virtual Arsenal) und zieht eine Person entsprechend euren Wünschen an. Wenn ihr bspw. die Uniform für Lead ändern wollt, sucht ihr euch aus der Liste die passende Uniform aus. 

![](https://github.com/Schwaggot/kellerkompanie-template/blob/master/doc/virtual_arsenal_uniform.jpg?raw=true)

Dann habt ihr die Möglichkeit das Loadout, das ihr aktuell seht zu exportieren, dazu entweder `STRG + C` oder unten den Knopf zum Exportieren drücken. Daraufhin landet das aktuelle Loadout in eurer Zwischenablage. Ihr öffnet jetzt also ein neues Dokument im Texteditor und fügt dort den Text aus der Zwischenablage ein `STRG + V` oder meist Rechtsklick -> Einfügen. In meinem Beispiel erhält man dann sowas:
```
comment "Exported from Arsenal by Schwaggot";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "U_BG_Guerrilla_6_1";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_morphine";
this addItemToUniform "rhs_mag_nspn_red";

comment "Add weapons";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

comment "Set identity";
this setFace "WhiteHead_15";
this setSpeaker "ace_novoice";
```
Die Zeilen, die mit `comment` anfangen, könnt ihr ignorieren, die anderen Zeilen vollführen die Magie. Am Anfang werden erstmal alle Items von der Figur entfernt und dann Stück für Stück das gewünschte Loadout zugewiesen. In unserem Fall sind wir jetzt an der Zeile interessiert, die mit der Uniform zu tun hat, also `this forceAddUniform "U_BG_Guerrilla_6_1";`. Von dort extrahieren (Text markieren und kopieren) wir die Bezeichnung für die Uniform, also `U_BG_Guerrilla_6_1` und fügen diese in unsere Zeile von oben ein. Aus `["put", ["LEA", ["U_B_CombatUniform_mcam"]]] call keko_loadout_uniform;` wird dann `["put", ["LEA", ["U_BG_Guerrilla_6_1"]]] call keko_loadout_uniform;`. Analog verfährt man mit allen Dingen, die man ändern möchte.

#### Inventar von Uniformen/Westen/etc. zuweisen
Beim Inventar von Uniformen, Westen etc. muss man ein weiteres Detail beachten, man muss noch angeben wie viel von etwas man haben möchte. Gucken wir uns z.B. die Zeile `["put", ["GRE", [[10, "#GRENADIER_MAG"]]]] call keko_loadout_backpack_inventory;`, dort werden dem Grenadier (Kürzel GRE) 10x das Item #GRENADIER_MAG in den Rucksack gelegt. Wollen wir ihm jetzt statt 10 nur 8 Granaten und dafür noch 2 Primärmagazine in den Rucksack legen, so sieht die Zeile wie folgt aus (man beachte, dass es eine Liste von Tupeln ist!): `["put", ["GRE", [[8, "#GRENADIER_MAG"],[2,"#PRIMARY_MAG"]]]] call keko_loadout_backpack_inventory;`. Dies gilt eigentlich für alle Dinge mit Inventar.



### Eigene Kiste erstellen


## Häufig gestellte Fragen
