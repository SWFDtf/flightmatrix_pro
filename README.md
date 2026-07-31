# 🌍 FlightMatrix Pro

FlightMatrix Pro ist ein dynamischer Live-Tracker für Google Flights. Das Skript klinkt sich als Beobachter in deine aktive Google Flights Session ein, extrahiert detaillierte Flugdaten (inklusive IATA-Codes, Gepäck-Matrix, CO2-Emissionen und Zwischenstopps) in Echtzeit und speichert diese strukturiert in einer formatierten Excel-Datei.

🔗 **Repository:** [https://github.com/SWFDtf/flightmatrix_pro/](https://github.com/SWFDtf/flightmatrix_pro/)

## ✨ Features

* **Echtzeit Live-Observer:** Liest Flugdaten vollautomatisch aus, während du dich durch Google Flights klickst.
* **Intelligente IATA-Tabs:** Erstellt für jede neue Flugroute (z.B. FRA-JFK) selbstständig ein eigenes Tabellenblatt in der Excel-Datei.
* **Gepäck-Matrix:** Analysiert den Text und erkennt, ob Hand- und Aufgabegepäck im Tarif inkludiert sind oder ob zusätzliche Gebühren anfallen.
* **Auto-Overwrite (Preis-Korrektur):** Aktualisiert die Preise für Hin- und Rückflüge dynamisch im Hintergrund, sobald der finale Gesamtpreis im Checkout-Schritt feststeht.
* **Live-Terminal-Steuerung:** Pausiere den Scanner, erzwinge einen Re-Check oder beende die Session sauber direkt über Konsolen-Befehle.
* **Automatisiertes Excel-Styling:** Generiert formatierte Excel-Exporte mit eingefrorenen Kopfzeilen und automatischen Heatmaps (Color-Scales) zum sofortigen Erkennen der günstigsten Preise.

## 🚀 Installation

1. Klone dieses Repository auf deinen Rechner:
```
   git clone [https://github.com/SWFDtf/flightmatrix_pro.git](https://github.com/SWFDtf/flightmatrix_pro.git)
   cd flightmatrix_pro

```

 2. Installiere die benötigten Python-Abhängigkeiten:

   ```
   pip install -r requirements.txt
   
   ```

## 💻 Nutzung
Starte das Hauptskript über dein Terminal:

```
python flightmatrix_pro.py

```

Sobald das Skript läuft, öffnet sich automatisch ein neues Chrome-Browserfenster mit Google Flights. Navigiere einfach wie gewohnt auf der Seite, suche nach deinen Flügen und klicke dich durch die Optionen. Das Skript läuft im Hintergrund und protokolliert alle gefundenen Daten ("RAW" für Einzelflüge, eigene Tabs für gepaarte Hin- und Rückflüge).
### ⌨️ Terminal-Befehle
Während das Skript läuft, kannst du folgende Tasten in dein Terminal tippen und mit Enter bestätigen, um den Scraper zu steuern:
| Befehl | Aktion |
|---|---|
| **p** | Pausiert das Tracking oder setzt es fort. |
| **r** | Erzwingt sofort einen manuellen Re-Check der aktuell geöffneten Seite. |
| **q** | Beendet die Observierung sicher und speichert die finale Excel-Datei ab. |
## 🛠️ Verwendete Technologien
 * **Selenium:** Für die Browser-Automatisierung und das Auslesen des DOMs.
 * **Webdriver Manager:** Für das automatische Management des ChromeDriver-Setups.
 * **OpenPyXL:** Für das Erstellen, Formatieren und Speichern der komplexen Excel-Strukturen.
## ⚠️ Wichtiger Hinweis
Google ändert gelegentlich die DOM-Struktur (HTML) von Google Flights. Dieses Skript nutzt robuste Regex-Muster und Text-Analysen, um Ausfälle bei leichten UI-Änderungen zu minimieren. Dennoch kann es bei großen Updates seitens Google passieren, dass Selektoren angepasst werden müssen.

