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

## Parameter
Die Einstellungen der einzelnen Module (ACE etc.) sind von Haus aus so eingestellt, dass sie dem Standard entsprechen. Nichtsdestotrotz kann man verschiedene Parameter einstellen. Dies mach man, indem man auf dem Server die Mission lädt und im Slotting Screen oben rechts auf Parameter geht. Dort kann man dann die Werte je nach Mission anpassen.
![](https://github.com/Schwaggot/kellerkompanie-zeus-template/blob/master/doc/parameter01.jpg?raw=true)
![](https://github.com/Schwaggot/kellerkompanie-zeus-template/blob/master/doc/parameter02.jpg?raw=true)

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
+ NATO (minimal)
+ AAF (minimal)
+ CSAT (minimal)
+ U.S. Army - Operational Camouflage Pattern (main)
+ U.S. Army - Universal Camouflage Pattern (main)
+ U.S. Army Rangers - Woodland (main)
+ U.S. Army Rangers - Desert (main)
+ U.S. Marine Corps - Marine Pattern Desert (main)
+ U.S. Marine Corps - Marine Pattern Woodland (main)
+ MARSOC - Marine Corps Forces Special Operations Command (main)
+ British Armed Forces - Arctic White (main)
+ British Armed Forces - Arctic Multi-Terrain Pattern (main)
+ British Armed Forces - Desert (main)
+ British Armed Forces - Multi-Terrain Pattern (main)
+ British Armed Forces - Temperate (main)
+ British Armed Forces - Woodland (main)
+ Bundeswehr - Flecktarn (main)
+ Bundeswehr - Tropentarn (main)
+ Bundeswehr - KSK Fleck (main)
+ Bundeswehr - KSK Tropen (main)
+ Black Order (main)
+ Black Order - Special Forces (main)
+ Black Order - Early Years (main)
+ Black Order - Red Berets (main)
+ Japan - JSDF (main)
+ Polizei (SEK) Zivil (main)
+ GSG9 (main)
+ China - People Liberation Army
+ China - People Liberation Army (Marine)
+ Foxhound Siberian Guard
+ Guerilla (minimal)

### Spawn Loadout & Rollen
Das Loadout beim Spawn und die Rollenverteilung wird über die Variable der Spielerfigur geregelt. Das heißt, man stellt einfach einen Rifleman hin, macht ihn playable und gibt ihm als Variablennamen `rif_1` wobei die ersten 3 Buchstaben benutzt werden um die Rolle und damit das Loadout zu bestimmen und die Endung nur dazu dient verschiedene Spieler mit gleichen Rollen zu haben. Demnach steht also `rif` für Rifleman und die `_1` als Endung um ihn von anderen zu unterscheiden, da in ArmA alle Variablen für Objekte unterschiedliche Namen haben müssen. Der nächste würde dann `rif_2` heißen. Ich empfehle grundsätzlich die Endung _<Zahl> da der Editor dann beim Kopieren automatisch hochzählt. Kopiere ich die Spielfigur `rif_2` dann erstellt der Editor die neue Einheit automatisch als `rif_3` und man spart sich Arbeit. Zur Zeit werden folgende Rollen (Prefixe) erkannt:

|Prefix|Rolle|
|---|---|
|`cmd`|Zeus|
|`lea`|Lead|
|`ser`|Sergeant|
|`med`|Medic (Doctor)|
|`ftl`|Fire Team Leader|
|`sql`|Squad Leader|
|`rif`|Rifleman|
|`rat`|Rifleman AT|
|`gre`|Grenadier|
|`mar`|Marksman|
|`lmg`|Light Machine Gunner|
|`las`|Light Machine Gunner Asst.|
|`mmg`|Medium Machine Gunner|
|`mas`|Medium Machine Gunner|
|`sat`|AT Specialist|
|`aat`|AT Specialist Asst.|
|`saa`|AA Specialist|
|`aaa`|AA Specialist Asst.|
|`eod`|Explosive Ordanance Disposal|
|`eng`|Engineer|
|`pil`|Pilot|
|`uav`|UAV Operator|
|`jtc`|JTAC|
|`sni`|Sniper|
|`spo`|Spotter|
