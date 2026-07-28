# Excel Formeln in feste Werte umwandeln (`_hardcoded.xlsx`)

Dieses Tool bzw. Skript konvertiert rechenintensive Excel-Dateien (`.xlsx`) in blitzschnell öffnende Dateien, indem alle Formeln durch ihre festen, berechneten Werte ersetzt werden. Diagramme und Formatierungen bleiben dabei vollständig erhalten, da sie auf den reinen Zellwerten basieren.

---

## 🚀 1. Schnellstart auf macOS

1. **Skript-Datei erstellen:** Speichere das Skript als `excel_to_static_progress.sh` ab.
2. **Terminal öffnen** und in den Ordner navigieren, in dem das Skript liegt:
3. **Ausführbarkeit erlauben** (einmalig notwendig):
```bash
chmod +x excel_to_static_progress.sh

```


4. **Skript ausführen** mit deiner Excel-Datei als Parameter:
```bash
./excel_to_static_progress.sh deine_tabelle.xlsx

```



---

## ⚙️ Was macht das Skript im Detail?

1. **Automatische Abhängigkeitsprüfung:** Das Skript prüft, ob die Python-Bibliothek `openpyxl` auf deinem Mac installiert ist. Falls nicht, installiert es diese automatisch über `pip3`.
2. **Formel-Analyse:** Es durchsucht jedes Tabellenblatt der Excel-Datei nach Formeln (Zellen, die mit einem `=` beginnen).
3. **Zählung:** Es zählt im Voraus exakt, wie viele Formelzellen in der Datei vorhanden sind.
4. **Fortschrittsanzeige:** Während des Ersetzens zeigt das Terminal eine dynamische Fortschrittsleiste (Progress Bar) an.
5. **Automatische Namensgebung:** Die Zieldatei wird automatisch im selben Ordner mit dem Suffix `_hardcoded.xlsx` gespeichert (z. B. aus `budget.xlsx` wird `budget_hardcoded.xlsx`).

---

## 💡 Technische Hinweise

* **Unterstützte Dateiformate:** Das Skript ist für `.xlsx`-Dateien ausgelegt. Ältere `.xls`-Formate werden von `openpyxl` nicht direkt unterstützt und sollten vorher in `.xlsx` konvertiert werden.
* **Diagramme:** Da Diagramme in Excel auf Zellen und deren Werte verweisen, funktionieren sie nach dem Entfernen der Formeln weiterhin reibungslos – laden nun aber ebenfalls ohne Verzögerung, da Excel die Formeln im Hintergrund nicht mehr neu berechnen muss.
* **Originaldatei:** Deine Originaldatei bleibt unangetastet, da das Skript die bereinigten Daten immer in einer neuen Datei (`_hardcoded.xlsx`) abspeichert.
"""

with open('README_Excel_Tool.md', 'w') as f:
f.write(md_content)

print("Markdown file created successfully.")

# Anleitung: Excel-Formeln in statische Werte umwandeln (macOS)

Dieses Dokument erklärt, wie du das erstellte Shell-Skript auf deinem Mac nutzt, um Excel-Dateien mit Formeln in blitzschnell öffnende Dateien mit festen Werten ("Hardcoded") zu konvertieren.

---

## 🚀 1. Schnellstart

1. Lade das Skript `excel_to_static_progress.sh` in einen Ordner deiner Wahl (z. B. auf deinen Schreibtisch).
2. Öffne das **Terminal** auf deinem Mac.
3. Navigiere in den Ordner, in dem das Skript liegt:


```bash
   cd ~/Desktop

```

4. Mache das Skript einmalig ausführbar:
```bash
chmod +x excel_to_static_progress.sh

```


5. Führe das Skript aus und übergebe deine Excel-Datei:
```bash
./excel_to_static_progress.sh deine_tabelle.xlsx

```



---

## 🛠 Was macht das Skript im Detail?

1. **Abhängigkeits-Check:** Es prüft, ob die Python-Bibliothek `openpyxl` installiert ist. Falls nicht, installiert es diese automatisch über `pip3`.
2. **Formel-Analyse:** Es scannt die gesamte Excel-Datei (alle Tabellenblätter) und zählt im Voraus exakt, wie viele Formeln (Zellen, die mit `=` beginnen) vorhanden sind.
3. **Fortschrittsanzeige:** Während des Ersetzens zeigt das Terminal eine visuelle Progress-Bar mit Prozentangabe und Zähler (`(Aktuell/Gesamt)`) an.
4. **Automatische Namensgebung:** Die Zieldatei wird automatisch im selben Ordner gespeichert und erhält den Namenszusatz `_hardcoded.xlsx` (z. B. aus `budget.xlsx` wird `budget_hardcoded.xlsx`).

---

## 📊 Auswirkung auf Diagramme

* **Diagramme funktionieren weiterhin fehlerfrei**, da sie sich auf die Zellenwerte stützen.
* Da die Formeln durch ihre echten Ergebnisse ersetzt wurden, müssen Excel oder andere Tabellenkalkulationsprogramme beim Öffnen keine rechenintensiven Formeln mehr berechnen. Die Datei öffnet sich **instant** (ohne Lade- oder Berechnungsverzögerung).

---

## ⚠️ Voraussetzungen

* **Python 3** muss auf deinem Mac vorhanden sein (ist bei macOS standardmäßig oder über Xcode Command Line Tools / Homebrew installiert).
* Das Skript funktioniert für `.xlsx`-Dateien.



