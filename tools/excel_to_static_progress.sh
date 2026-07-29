import os

script_content = r"""#!/bin/bash

# Excel Formeln in feste Werte umwandeln mit Fortschrittsanzeige (macOS Shell-Skript)
# Verwendung: ./excel_to_static_progress.sh [eingabe.xlsx | --help]
echo "v1.0 Made by SWFDtf"
# Hilfe-Option oder fehlendes Argument prüfen
if [ "$1" = "--help" ] || [ "$1" = "-h" ] || [ -z "$1" ]; then
    if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
        echo "Öffne Dokumentation im Browser..."
        if command -v open &> /dev/null; then
            open "https://github.com/SWFDtf/flightmatrix_pro/blob/main/tools/README.md"
        else
            echo "Bitte besuche: https://github.com/SWFDtf/flightmatrix_pro/blob/main/tools/README.md"
        fi
        exit 0
    fi
    echo "Fehler: Keine Eingabedatei angegeben."
    echo "Verwendung: $0 <eingabe.xlsx> oder $0 --help"
    exit 1
fi

INPUT_FILE="$1"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Fehler: Eingabedatei '$INPUT_FILE' wurde nicht gefunden."
    exit 1
fi

DIR_NAME=$(dirname "$INPUT_FILE")
BASE_NAME=$(basename "$INPUT_FILE" .xlsx)
OUTPUT_FILE="$DIR_NAME/${BASE_NAME}_hardcoded.xlsx"

echo "Prüfe Python-Abhängigkeit (openpyxl)..."
if ! python3 -c "import openpyxl" &> /dev/null; then
    echo "openpyxl nicht gefunden. Installiere es automatisch über pip3..."
    pip3 install openpyxl
    if [ $? -ne 0 ]; then
        echo "Fehler bei der Installation. Bitte manuell 'pip3 install openpyxl' ausführen."
        exit 1
    fi
else
    echo "openpyxl ist bereits installiert."
fi

echo "Analysiere Excel-Datei..."

python3 - <<EOF
import openpyxl
import sys

input_path = "$INPUT_FILE"
output_path = "$OUTPUT_FILE"

try:
    wb = openpyxl.load_workbook(input_path, data_only=False)
    wb_data = openpyxl.load_workbook(input_path, data_only=True)

    # 1. Schritt: Alle Formeln im Voraus zählen
    total_formulas = 0
    sheet_data = []

    for sheet_name in wb.sheetnames:
        ws = wb[sheet_name]
        ws_data = wb_data[sheet_name]
        
        cells_to_process = []
        for row in ws.iter_rows():
            for cell in row:
                val_str = str(cell.value)
                if val_str.startswith('='):
                    val = ws_data.cell(row=cell.row, column=cell.column).value
                    cells_to_process.append((cell, val))
                    total_formulas += 1
        
        sheet_data.append((ws, cells_to_process))

    print(f"Gefundene Formeln insgesamt: {total_formulas}")

    if total_formulas == 0:
        print("Keine Formeln in der Datei gefunden. Speichere Kopie...")
        wb.save(output_path)
        sys.exit(0)

    # 2. Schritt: Ersetzen mit visueller Fortschrittsanzeige
    processed = 0
    bar_length = 30

    def print_progress(current, total):
        percent = float(current) / total
        arrow = '-' * int(round(percent * bar_length) - 1) + '>' if int(round(percent * bar_length)) > 0 else ''
        spaces = ' ' * (bar_length - len(arrow))
        sys.stdout.write(f"\rFortschritt: [{arrow + spaces}] {int(percent * 100)}% ({current}/{total})")
        sys.stdout.flush()

    print_progress(0, total_formulas)

    for ws, cells in sheet_data:
        for cell, val in cells:
            cell.value = val
            processed += 1
            print_progress(processed, total_formulas)

    print() # Zeilenumbruch nach Abschluss
    wb.save(output_path)
    print("ERFOLG: Datei wurde erfolgreich konvertiert!")
    print("Ziel-Datei: " + output_path)

except Exception as e:
    print("\nFEHLER bei der Verarbeitung: " + str(e))
    exit(1)
EOF
"""

with open('excel_to_static_progress.sh', 'w') as f:
    f.write(script_content)

os.chmod('excel_to_static_progress.sh', 0o755)
print("Erfolgreich! Die Datei 'excel_to_static_progress.sh' wurde erstellt und ausführbar gemacht.")
