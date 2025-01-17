import pyautogui
import time

print("Déplacez votre souris sur l'élément souhaité.")

while True:
    x, y = pyautogui.position()
    print(f"Position actuelle de la souris : x={x}, y={y}", end="\r")
    time.sleep(0.2)