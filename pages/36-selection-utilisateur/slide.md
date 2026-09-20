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
Notes formateur :

Présenter ce pattern comme très pratique mais dangereux si on ne vérifie pas la sélection.

Image souhaitée : une capture Excel avec B2:B6 sélectionné, colonne C vide, puis annotations : "Selection" sur B2:B6 et "Offset(0, 1)" vers C2:C6.

Raccourci possible sans code : Alt+F8 > sélectionner la macro > Options > raccourci clavier.
Mentionner aussi `Application.OnKey` pour les curieux, sans forcément le faire coder.
-->
