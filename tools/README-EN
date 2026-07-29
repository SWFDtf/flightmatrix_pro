# Convert Excel formulas to static values ​​(`_hardcoded.xlsx`)


<b> This version is deprecated. The new version is excel-freeze. https://github.com/SWFDtf/excel-freeze</b><hr><br>
This tool (or script) converts calculation-heavy Excel files (`.xlsx`) into files that open instantly by replacing all formulas with their static, calculated values. Charts and formatting remain fully intact, as they rely on the raw cell values.

---

## 🚀 1. Quick Start on macOS

1. **Create the script file:** Save the script as `excel_to_static_progress.sh`.
2. **Open Terminal** and navigate to the folder containing the script:
3. **Make executable** (required once):
```bash
chmod +x excel_to_static_progress.sh

```


4. **Run the script** with your Excel file as a parameter:
```bash
./excel_to_static_progress.sh your_spreadsheet.xlsx

```



---

## ⚙️ What does the script do in detail?

1. **Automatic dependency check:** The script checks if the Python library `openpyxl` is installed on your Mac. If not, it installs it automatically via `pip3`.
2. **Formula analysis:** It scans every worksheet in the Excel file for formulas (cells starting with `=`).
3. **Counting:** It counts exactly how many formula cells are present in the file beforehand.
4. **Progress display:** The terminal displays a dynamic progress bar during the replacement process.
5. **Automatic naming:** The output file is automatically saved in the same folder with the suffix `_hardcoded.xlsx` (e.g., `budget.xlsx` becomes `budget_hardcoded.xlsx`).

---

## 💡 Technical Notes

* **Supported File Formats:** The script is designed for `.xlsx` files. Older `.xls` formats are not directly supported by `openpyxl` and should be converted to `.xlsx` beforehand.
* **Charts:** Since Excel charts reference cells and their values, they continue to work seamlessly after formulas are removed—but they now load without delay, as Excel no longer needs to recalculate formulas in the background.
* **Original File:** Your original file remains untouched, as the script always saves the cleaned data to a new file (`_hardcoded.xlsx`). """

with open('README_Excel_Tool.md', 'w') as f:
f.write(md_content)

print("Markdown file created successfully.")

# Guide: Converting Excel formulas to static values ​​(macOS)

This document explains how to use the created shell script on your Mac to convert Excel files containing formulas into files with fixed values ​​("hardcoded") that open instantly.

---

## 🚀 1. Quick Start

1. Download the script `excel_to_static_progress.sh` to a folder of your choice (e.g., your Desktop).
2. Open **Terminal** on your Mac.
3. Navigate to the folder containing the script:


```bash
cd ~/Desktop

```

4. Make the script executable (one-time step):
```bash
chmod +x excel_to_static_progress.sh

```


5. Run the script and pass your Excel file to it:
```bash
./excel_to_static_progress.sh your_spreadsheet.xlsx

```



---

## 🛠 What does the script do in detail?

1. **Dependency Check:** It checks if the `openpyxl` Python library is installed. If not, it installs it automatically via `pip3`.
2. **Formula Analysis:** It scans the entire Excel file (all worksheets) and counts exactly how many formulas (cells starting with `=`) are present beforehand.
3. **Progress Display:** During the replacement process, the Terminal displays a visual progress bar with a percentage and a counter (`(Current/Total)`).
4. **Automatic Naming:** The output file is automatically saved in the same folder and receives the suffix `_hardcoded.xlsx` (e.g., `budget.xlsx` becomes `budget_hardcoded.xlsx`).

---

## 📊 Impact on Charts

* **Charts continue to work flawlessly** because they rely on the cell values.
* Since formulas have been replaced by their actual results, Excel or other spreadsheet programs no longer need to calculate resource-intensive formulas upon opening. The file opens **instantly** (without loading or calculation delays).

---

## ⚠️ Prerequisites

* **Python 3** must be installed on your Mac (it is included by default in macOS or can be installed via Xcode Command Line Tools / Homebrew).
* The script works with `.xlsx` files.

<hr>
