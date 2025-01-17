import pandas as pd
import pyautogui
import time
import webbrowser
import pyperclip

# Variables
browser_path = "C:/Program Files/Mozilla Firefox/firefox.exe"
file_data = "example.csv"
wait_time = 3

# Item Coords
url_bar_coords = (749, 80)
save_button_coords = (254, 597)
list_coords = (254, 686)
expand_note_coords = (550, 710)
add_note_coords = (220, 780)
confirmation_note_coords = (1160, 695)

browser = webbrowser.get(f'"{browser_path}" %s')

def maximize_window():
    pyautogui.hotkey("alt", "space")
    time.sleep(1)
    pyautogui.press("x")
    time.sleep(1)

def add_place(url, note):
    try:
        pyautogui.click(url_bar_coords)
        time.sleep(wait_time)
        pyperclip.copy(url)
        pyautogui.hotkey("ctrl", "a")
        pyautogui.hotkey("ctrl", "v")
        time.sleep(wait_time)
        pyautogui.press("enter")
        time.sleep(5)
        pyautogui.click(save_button_coords)
        time.sleep(wait_time)
        pyautogui.click(list_coords)
        time.sleep(wait_time)
        pyautogui.click(expand_note_coords)
        time.sleep(wait_time)
        pyautogui.click(add_note_coords)
        time.sleep(wait_time)
        pyperclip.copy(note)
        pyautogui.hotkey("ctrl", "v")
        time.sleep(wait_time)
        pyautogui.click(confirmation_note_coords)
        time.sleep(wait_time)
    except Exception as e:
        print(f"Erreur lors de l'ajout du lieu : {e}")

if __name__ == "__main__":
    csv_path = file_data
    data = pd.read_csv(csv_path)
    data["URL"] = data["URL"].str.strip()
    browser.open("https://www.google.com/maps")
    print("Ouvrir Google Maps...")
    time.sleep(10)
    maximize_window()
    for index, row in data.iterrows():
        add_place(row["URL"], row["Note"])
        time.sleep(3)
    print("Traitement terminé.")
