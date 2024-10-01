; Fonction pour cliquer à un endroit spécifique (coordonnées X, Y)
Func ClickAtCoords($xCoord, $yCoord)
    MouseClick("left", $xCoord, $yCoord)
    Sleep(2000) ; Pause après le clic pour éviter les erreurs
EndFunc

; Fonction pour copier le titre d'un item (triple clic et Ctrl + C)
Func CopyTitle($xCoord, $yCoord)
    ; Cliquer à l'emplacement de l'item
    ClickAtCoords($xCoord, $yCoord)
    
    ; Triple clic pour sélectionner le titre
    MouseClick("left", $xCoord, $yCoord, 3)
    Sleep(2000)
    
    ; Copier le titre (Ctrl + C)
    Send("^c")
    Sleep(2000)
EndFunc

; Fonction pour copier tout le texte d'un élément (Ctrl + A et Ctrl + C)
Func CopyText()
    Send("^a") ; Ctrl + A pour sélectionner tout le texte
    Sleep(2000)
    Send("^c") ; Ctrl + C pour copier
    Sleep(2000)
EndFunc

; Fonction pour simuler un défilement avec la molette
Func ScrollDown($scrolls)
    MouseWheel("down", $scrolls) ; Défiler vers le bas de $scrolls crans
    Sleep(2000) ; Petite pause pour que le scroll se fasse visuellement
EndFunc

; Variables pour les coordonnées
$xItem = 190    ; Coordonnée X de l'item Google Maps (à ajuster)
$yItem = 340    ; Coordonnée Y de l'item Google Maps (à ajuster)
$xTitle = 545   ; Coordonnée X pour le titre (à ajuster)
$yTitle = 450   ; Coordonnée Y pour le titre (à ajuster)
$xNewLocation = 105 ; Coordonnée X du nouvel endroit (à ajuster)
$yNewLocation = 422 ; Coordonnée Y du nouvel endroit (à ajuster)

Sleep(15000)

; Boucle infinie pour parcourir les items Google Maps
While 1
    ; 1. Cliquer sur l'item du compte Google Maps
    ClickAtCoords($xItem, $yItem)

    ; 2. Copier le titre de l'item avec un triple clic
    CopyTitle($xTitle, $yTitle)
    
    ; 3. Alt + Tab pour basculer vers la fenêtre de destination
    Send("!{TAB}")
    Sleep(2000)
    
    ; 4. Coller le titre (Ctrl + V) et appuyer sur flèche droite
    Send("^v")
    Sleep(2000)
    Send("{RIGHT}")
    Sleep(2000)
    
    ; 5. Alt + Tab pour revenir à la fenêtre de Google Maps
    Send("!{TAB}")
    Sleep(2000)

    ; 6. Cliquer à un autre endroit spécifié (coordonnées différentes de l'item de base)
    ClickAtCoords($xNewLocation, $yNewLocation)

    ; 7. Copier tout le texte avec Ctrl + A et Ctrl + C
    CopyText()

    ; 8. Faire défiler la page avec 3 scrolls
    ScrollDown(6)
    Sleep(2000)

    ; 9. Alt + Tab pour retourner à la fenêtre de destination
    Send("!{TAB}")
    Sleep(2000)

    ; 10. Coller le texte copié et appuyer sur entrée et flèche gauche
    Send("^v")
    Sleep(2000)
    Send("{ENTER}")
    Sleep(2000)
    Send("{LEFT}")
    Sleep(2000)

    ; 11. Alt + Tab pour revenir à Google Maps
    Send("!{TAB}")
    Sleep(2000)
WEnd
