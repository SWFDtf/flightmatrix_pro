# ✈️ Pro Flugpreis-Matrix (Sliding Window & Multi-Platform Analysis)

Ein extrem mächtiges, lokal ausgeführtes Python-Skript zur automatisierten Erstellung einer hochdetaillierten, professionellen Excel-Arbeitsmappe (`.xlsx`) für die Flugpreis- und Reisekostenanalyse.

Es analysiert lückenlos alle Tage innerhalb von Schulferien (per gleitendem Fenster / Sliding Window), vergleicht verschiedene deutsche Abflughäfen (NRW & große Hubs) und berücksichtigt wichtige Besonderheiten wie Layover-Quirks, Plattform-Vergleiche und Gepäckoptionen.

---

> **⚠️ Wichtiger Hinweis zu API-Calls & Web-Scraping:**
> Dieses Skript generiert simulierte, realitätsnahe Markt- und Preisdaten inklusive direkter Such-Links zu Plattformen wie **Google Flights, Skyscanner und Trip.com**. Es führt **keine** Live-Web-Scraping-Abfragen oder automatisierten API-Calls auf diesen Plattformen durch.
>
> *Dadurch läufst du absolut sicher vor IP-Bans, Captchas oder dem Verstoß gegen Nutzungsbedingungen (ToS) von Drittanbietern!* Die Links leiten dich direkt zur manuellen Live-Suche im Browser weiter.

---

## Features
- **Sliding-Window-Analyse:** Geht jeden einzelnen Tag der Schulferien (NRW) für verschiedene Reisedauern (4 bis 14 Tage) durch.
- **Umfassendes Abflughafen-Netzwerk:** - *Regional NRW:* Düsseldorf (DUS), Köln/Bonn (CGN), Dortmund (DTM), Münster/Osnabrück (FMO), Paderborn/Lippstadt (PAD), Niederrhein-Weeze (NRN)
  - *Deutsche Hubs:* Frankfurt (FRA), München (MUC), Berlin (BER), Hamburg (HAM), Stuttgart (STR)
- **Multi-Plattform-Vergleich:** Vergleicht Angebote virtuell über Google Flights, Skyscanner und Trip.com mit echten, klickbaren Deeplinks.
- **Erweiterte Stopp-Analysen & Quirks:** Markiert Besonderheiten wie Flughafenwechsel bei Layovers (z.B. LHR ➔ LGW), extrem kurze Umsteigezeiten oder lange Aufenthalte.
- **Professionelles Excel-Design (`openpyxl`):**
  - **Dashboard & Übersicht** mit KPIs, Min/Max/Avg-Formeln (`MINIFS`, `AVERAGEIFS`) und integriertem Säulendiagramm.
  - Bedingte Formatierung (Farb-Skalen Grün-Gelb-Rot) für Bestpreise.
  - Fixierte Kopfzeilen (Frozen Panes) und Autofilter.

---

## In diesem Repository enthalten
- `flight_matrix_pro.py` – Das Hauptskript zur Generierung der Excel-Datei.
- `requirements.txt` – Liste der benötigten Python-Bibliotheken.
- `LICENSE` – Lizenzdatei (MIT License).
- `README.md` – Diese Dokumentation.

---

## Installation & Voraussetzungen

### 1. Python installieren
Stelle sicher, dass Python 3.x auf deinem System (macOS, Windows oder Linux) installiert ist. Du kannst es im Terminal überprüfen mit:
```bash
python3 --version
```

### 2. Repository klonen oder Dateien herunterladen
```
git clone https://github.com/swfdtf/flightmatrix_pro
```

### 3. Abhängigkeiten installieren
Öffne dein Terminal (unter macOS z.B. das Terminal oder iTerm2), navigiere in den Ordner und installiere die benötigten Pakete über die `requirements.txt`:
```bash
pip install -r requirements.txt
```

---

## Benutzung

1. Starte das Skript im Terminal:
   ```bash
   python3 flight_matrix_pro.py
   ```
2. Das Skript fragt dich interaktiv im Terminal nach:
   - Dem gewünschten **Reiseziel** (z.B. *Tokio*, *Dubai*, *New York*).
   - Den dazugehörigen **IATA-Codes** (z.B. *HND, NRT* oder *DXB*).
3. Das Skript berechnet im Hintergrund Tausende von Kombinationen und generiert eine Excel-Datei im selben Ordner, benannt nach dem Schema:
   `Flugpreisanalyse_Matrix_[Reiseziel].xlsx`
4. Öffne die Excel-Datei in Microsoft Excel oder Apple Numbers, um das interaktive Dashboard und die Detailtabellen zu nutzen!

---

## Lizenz
Dieses Projekt ist unter der **MIT License** lizenziert – siehe die `LICENSE`-Datei für Details.