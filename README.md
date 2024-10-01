# 📋 Import/Export Automation Script

This project automates both the **import** and **export** of data between Excel and Google Maps. The script handles tasks like adding notes to Google Maps from Excel and exporting lists from Google Maps into Excel.

Note: the base tutorial is for Excel, but you can use Google Sheet or any table as well, as long as both Chrome and the second software are switchable with alt-tab and moveable with arrows.

## 🚀 Installation

1. **Install AutoIt**:  
   First, you'll need to download and install [AutoIt](https://www.autoitscript.com/site/autoit/downloads/).  
   This tool allows you to run the script on your machine.

2. **Download or Copy the Script**:  
   Make sure to copy or download the provided script and save it as a `.au3` file (e.g., `import_export_script.au3`).

3. **Set Up the Extension (for Custom CSS)**:  
   To apply custom styles in Google Maps, install a CSS extension like [Stylish](https://userstyles.org/) or [UserCSS](https://chrome.google.com/webstore/detail/user-css) in your browser.  
   After installing the extension, copy the content from **`custom-css.txt`** and paste it into the extension to apply the necessary styles (e.g., hiding specific elements on the page).

4. **Prepare Your Excel File**:  
   You can refer to the file **`example.xlsx`** to see how your Excel document should be structured for the script to work correctly.

---

## 📤 Exporting Data from Excel to Google Maps

### 📑 Preparing Your Excel File for Export

Note: If you want to use a specific list (default is "Want to Go"), please open AutoIt Window Tool, and look for the coordinates of the list you want to target when clicking on the lists in Google Maps. Then, replace line 53's coordinates by yours. It is accessible by going to mouse menu, and then clicking on the window of Google Maps and hovering the target.

### Important Notes:
- Make sure to focus on the **first cell** you want to copy from in Excel before launching the script.
- Each title or URL in Column 1 will be copied and pasted into the Google Maps search bar, while the corresponding description in Column 2 will be added as a note.

### ▶️ Running the Export Script

1. **Open Google Maps**:  
   Before starting the script, make sure to open the list you need, having the list on the left of the screen.

2. **Open Excel**:  
   Then, before starting the script, make sure your Excel file is open, and the first cell that you want to copy from is selected.

3. **Run the Script**:  
   - Double-click the `.au3` file to launch the AutoIt script. Then, quickly click on Excel's first cell, and alt-tab to your Google Maps' page.
   - The script will automatically alternate between Excel and Google Maps, copying and pasting the data from Excel into Google Maps.

### ⚙️ Export Script Steps:
1. Copies the **title/URL** from the first cell in Excel.
2. Switches to Google Maps, pastes it into the search bar, and searches.
3. Clicks the **Save** button, selects the list, and adds a note.
4. Copies the **description** from the next cell in Excel.
5. Adds the description as a note in Google Maps.
6. Saves and repeats for the next row in Excel.

---

## 📥 Importing Data from Google Maps to Excel

Note: you can simply use [Google Takeout](https://takeout.google.com/) for exporting, and get your lists of places. If so, please edit the csv file according to `example.xlsx`. If you want to manually export it, please follow the instructions below.

### ▶️ Running the Import Script

1. **Open Excel**:  
   Ensure that your Excel file is open, and the cursor is in the **first cell** where you want the imported data to be pasted.

3. **Run the Script**:  
   - Double-click the `.au3` file to launch the AutoIt script. Then, quickly click on Excel's first cell.
   - The script will automatically copy data from Google Maps and paste it into Excel.

### ⚙️ Import Script Steps:
1. Opens Google Maps and selects each item in the list.
2. Copies the **title** of each item.
3. Switches to Excel and pastes the title into the current cell.
4. Switches back to Google Maps, copies the **description**, and pastes it into the next cell in Excel.
5. Moves to the next item and repeats the process until the entire list is copied.

---

## ⚠️ Important Instructions

- **Ensure the correct Excel layout**: Column 1 for titles/URLs, Column 2 for descriptions/notes.
- **Focus on the first cell**: Before running the script, select the first cell you want to copy in Excel.
- **Let the script work**: The script will run automatically and alternate between Excel and Google Maps until it finishes processing all rows or items.

## 📄 Referencing `example.xlsx`

The file `example.xlsx` provides a sample layout of how your Excel file should be structured for export. Use it as a reference to format your own document.

## 🛠 Troubleshooting

- If the script doesn't seem to copy from Excel, ensure that:
  - The Excel window is active.
  - The first cell is properly selected before the script starts.
  - There's a sufficient delay for copying data (you can adjust the delay in the script if needed).