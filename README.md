
# Google Maps List Importer ✨

This project allows you to automatically import places into your Google Maps lists 🚀. Whether you export your data using Google Takeout or customize your configuration, this script automates adding URLs with notes to a predefined Google Maps list.

---

## Key Features 🔄

- **Automatic addition of places and notes ✅**: Uses a CSV file to add entries to your Google Maps lists.
- **Customizable 🌐**: Adjust the click coordinates for your screen or add a CSS extension to improve the interface.
- **Coordinate Logging**: Use `coords.py` to easily find the exact positions of your clicks ✔️.

---

## Prerequisites 📚

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-repo/maps-list-importer.git
   cd maps-list-importer
   ```

2. **Export your data from Google Takeout**:
   - Go to [Google Takeout](https://takeout.google.com/).
   - Find "Lists" and check it.
   - Download your data, and find your CSVs.

3. **Install Python dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Install a custom CSS extension**:
   - Install a custom CSS extension in your browser (e.g., Stylus).
   - Copy and paste the content of `custom-css.css` into the extension to adjust the Google Maps interface.

---

## Configuration 🔧

1. **Edit the `start.py` file**:
   - **Browser Path**: Replace `browser_path` with the path to your browser (e.g., `C:/Program Files/Mozilla Firefox/firefox.exe`).
   - **CSV File Name**: Update the `file_data` variable with the path to your CSV file (e.g., `"data.csv"`).
   - **Wait Time**: Increase `wait_time` if your connection is slow.

2. **Adjust Click Coordinates**:
   - If your click coordinates differ (due to resolution or interface), run `coords.py` to find the exact positions. This will display real-time mouse coordinates in the terminal.

   Examples of coordinates to adjust:
   - `url_bar_coords`: Coordinates of the URL bar.
   - `list_coords`: Coordinates to select the target list.

---

## Usage 🚀

1. **Run the script**:
   ```bash
   python start.py
   ```

2. **Script Workflow**:
   - Opens Google Maps in your browser.
   - Adds URLs and notes from your CSV file, one by one.
   - Adds each place to a predefined list.

---

## Contributions 📚

Contributions are welcome! Open an issue or submit a pull request to propose improvements.

---

## License 🔒

This project is licensed under the MIT License. See the `LICENSE.md` file for more details.