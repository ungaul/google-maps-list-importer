; Fonction pour cliquer à un endroit spécifique (coordonnées X, Y)
Func ClickAtCoords($xCoord, $yCoord)
    MouseClick("left", $xCoord, $yCoord)
    Sleep(1000) ; Pause après le clic pour éviter les erreurs
EndFunc

; Fonction pour simuler la pression d'une touche
Func PressKey($key)
    Send($key)
    Sleep(500)
EndFunc

; Fonction pour vérifier si une cellule Excel est vide
Func IsCellEmpty()
    Send("^c") ; Copier la cellule sélectionnée
    Sleep(500)
    Local $clipContent = ClipGet() ; Récupérer le contenu du presse-papier
    If StringLen($clipContent) = 0 Then
        MsgBox(0, "Fin", "Le titre est vide. Arrêt du script.")
        Exit ; Quitte le script si la cellule est vide
    EndIf
EndFunc

; Fonction principale qui gère tout le processus en boucle
Func AddNoteToGoogleMaps()
    While 1
        ; 1. Vérifier si la cellule est vide
        IsCellEmpty()

        ; 2. Copier le titre de la première colonne dans Excel
        Send("^c") ; Copier la cellule sélectionnée
        Sleep(1000)
        
        ; 3. Alt + Tab pour basculer vers Google Maps
        Send("!{TAB}")
        Sleep(1000)
        
        ; 4. Cliquer sur la barre de recherche de Google Maps
        ClickAtCoords(416, 62) ; Coordonnées à ajuster pour la barre de recherche
        
        ; 5. Sélectionner tout texte existant et coller le titre depuis Excel
        Send("^a")
        Send("^v{ENTER}") ; Coller le titre
        
        Sleep(3000) ; Laisser le temps à la recherche de se faire
        
        ; 6. Cliquer sur le bouton "Enregistrer"
        ClickAtCoords(129, 515) ; Ajuste les coordonnées pour le bouton "Enregistrer"
        
        Sleep(1000)
        
        ; 7. Sélectionner la liste où enregistrer
        ClickAtCoords(148, 590) ; Ajuste les coordonnées pour la liste
        
        Sleep(5000)
        
        ; 8. Cliquer sur la flèche pour expand la zone de note
        ClickAtCoords(373, 614) ; Ajuste les coordonnées pour le bouton expand
        
        Sleep(1000)
        
        ; 9. Alt + Tab pour revenir à Excel
        Send("!{TAB}")
        Sleep(500)
        
        ; 10. Copier la description de la colonne suivante d'Excel
        Send("{RIGHT}^c") ; Se déplacer à la colonne suivante
        Sleep(1000)
        
        ; 11. Alt + Tab pour revenir à Google Maps
        Send("!{TAB}")
        Sleep(500)
        
        ; 12. Cliquer sur le bouton "Ajouter une note"
        ClickAtCoords(103, 676) ; Ajuste les coordonnées pour le bouton ajouter une note
        Sleep(500)
        
        ; 13. Coller la note
        Send("^v") ; Coller la description
        
        ; 14. Cliquer sur le bouton "Done" pour terminer
        ClickAtCoords(926, 580) ; Ajuste les coordonnées pour le bouton Done
        
        Sleep(10000) ; Laisser à Google Maps le temps de sauvegarder
        
        ; 15. Revenir à Excel, se déplacer vers la ligne suivante
        Send("!{TAB}")
        Sleep(500)
        PressKey("{DOWN}") ; Descend d'une ligne dans Excel
        PressKey("{LEFT}") ; Revenir à la première colonne
        
        Sleep(500) ; Petite pause avant de passer à l'itération suivante
    WEnd
EndFunc

Sleep(10000) ; Laisse le temps à Chrome de s'ouvrir

; Ouvrir Google Maps dans une nouvelle fenêtre
ShellExecute("chrome.exe", "--new-window --start-maximized https://www.google.com/maps")
Sleep(5000) ; Laisse le temps à Chrome de s'ouvrir
Send("!{TAB}")

; Lancer la fonction principale qui gère tout le processus
AddNoteToGoogleMaps()
