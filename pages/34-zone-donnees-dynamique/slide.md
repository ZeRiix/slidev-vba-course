---
layout: StaticCodeExampleLayout
kicker: Excel
title: Trouver la zone de données
caption: Éviter les boucles écrites avec une dernière ligne en dur.
slide_info: false
---

```vb
Sub ReadDynamicTable()
    Dim sheet As Worksheet
    Dim lastRow As Long
    Dim dataRange As Range

    Set sheet = ActiveSheet

    lastRow = sheet.Cells(sheet.Rows.Count, "A").End(xlUp).Row
    Set dataRange = sheet.Range("A1").CurrentRegion

    Debug.Print "Dernière ligne : " & lastRow
    Debug.Print "Zone : " & dataRange.Address
End Sub
```

::note::

- `.End(xlUp)` remonte depuis le bas de la feuille.
- `CurrentRegion` récupère le bloc autour d'une cellule.
- `Set` est obligatoire pour stocker un objet Excel.
- Qualifier avec `sheet` évite les ambiguïtés.

<!--
Notes formateur :

Insister sur le fait qu'une macro robuste ne dépend pas d'un nombre de lignes fixe.

Montrer le cas simple : tableau sans ligne vide. Expliquer que `CurrentRegion` s'arrête aux lignes/colonnes vides.
-->
