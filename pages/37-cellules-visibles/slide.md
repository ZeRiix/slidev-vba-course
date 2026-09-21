---
layout: StaticCodeExampleLayout
kicker: Excel
title: Traiter seulement les cellules visibles
caption: Après un filtre, la plage contient encore des lignes masquées.
slide_info: false
---

```vb
Sub HighlightVisibleSelection()
    Dim visibleCells As Range
    Dim cell As Range

    If TypeName(Selection) <> "Range" Then Exit Sub

    Set visibleCells = Selection.SpecialCells(xlCellTypeVisible)

    For Each cell In visibleCells.Cells
        If IsNumeric(cell.Value) And cell.Value > 1000 Then
            cell.Interior.Color = RGB(198, 239, 206)
        End If
    Next cell
End Sub
```

::note::

- L'utilisateur filtre une table dans Excel.
- Il sélectionne une colonne ou une zone.
- `SpecialCells(xlCellTypeVisible)` garde seulement les cellules affichées.
- Sans cela, une boucle peut traiter aussi les lignes masquées par le filtre.

<!--
Mémo :

Un filtre Excel masque des lignes, mais ne les retire pas de la plage.

Sans `SpecialCells(xlCellTypeVisible)`, une boucle peut traiter des cellules que l'utilisateur ne voit plus après filtrage.

Cette distinction est importante pour les macros "assistées par l'utilisateur" : la sélection visible à l'écran n'est pas toujours équivalente à toutes les cellules contenues dans la plage.
-->
