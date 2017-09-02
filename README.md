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
### Eigene Fraktion erstellen
### Eigene Kiste erstellen


## Häufig gestellte Fragen
