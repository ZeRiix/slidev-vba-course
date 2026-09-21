---
layout: StaticCodeExampleLayout
kicker: Excel
title: Parcourir des lignes Excel
caption: Une boucle peut appliquer la même règle à plusieurs lignes.
slide_info: false
---

```vb
Sub ProcessRows()
    Dim rowIndex As Long
    Dim amount As Currency

    For rowIndex = 2 To 6
        amount = Cells(rowIndex, 2).Value

        If amount > 1000 Then
            Cells(rowIndex, 3).Value = "Important"
        Else
            Cells(rowIndex, 3).Value = "Normal"
        End If
    Next rowIndex
End Sub
```

::note::

- `rowIndex` représente la ligne courante.
- `Cells(rowIndex, 2)` lit la colonne B.
- `Cells(rowIndex, 3)` écrit en colonne C.
- La règle est la même pour chaque ligne.

<!--
Mémo :

La logique est la même que pour un tableau VBA : répéter une règle pour plusieurs éléments.

La différence est la source des données : ici, l'élément courant est une ligne Excel, et `rowIndex` sert à construire les adresses avec `Cells(rowIndex, colonne)`.

Les numéros de colonnes rendent la macro compacte mais moins lisible. En révision, garder le mapping en tête : colonne B = `2`, colonne C = `3`.
-->
