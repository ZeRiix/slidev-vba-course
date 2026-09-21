---
layout: VisualContentLayout
kicker: Excel
title: Utiliser la sélection courante
placeholder: "Capture à ajouter : une plage de montants sélectionnée dans Excel, avec la colonne de statut à droite. Annoter la sélection et la cellule ciblée par Offset(0, 1)."
imageFit: contain
image: ./image.png
slide_info: false
contentSpan: 3
gridUnits: 4
---

La macro agit sur la zone choisie par l'utilisateur.

```vb
Sub HighlightSelectedAmounts()
    Dim cell As Range

    If TypeName(Selection) <> "Range" Then Exit Sub

    For Each cell In Selection.Cells
        If IsNumeric(cell.Value) And cell.Value > 1000 Then
            cell.Offset(0, 1).Value = "Important"
            cell.Interior.Color = RGB(255, 235, 156)
        End If
    Next cell
End Sub
```

- `Selection` dépend du clic utilisateur.
- `Offset(0, 1)` écrit à droite.

<!--
Mémo :

`Selection` rend une macro flexible parce qu'elle agit sur ce que l'utilisateur a choisi avant de lancer le code.

Cette flexibilité a un prix : si l'utilisateur sélectionne une image, une cellule isolée ou la mauvaise colonne, la macro peut échouer ou écrire au mauvais endroit.

`TypeName(Selection) <> "Range"` est donc une garde minimale pour vérifier que la sélection est bien une plage Excel.

`Offset(0, 1)` signifie : même ligne, une colonne à droite. C'est un déplacement relatif depuis chaque cellule parcourue.
-->
