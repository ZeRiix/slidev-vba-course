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
Mémo :

Une macro robuste évite les nombres de lignes écrits en dur : le fichier réel peut contenir 3 lignes aujourd'hui et 500 demain.

`sheet.Cells(sheet.Rows.Count, "A")` part de la dernière cellule possible de la colonne A, puis `.End(xlUp)` remonte jusqu'à la première cellule remplie rencontrée.

`CurrentRegion` récupère le bloc continu autour d'une cellule. Il s'arrête aux lignes ou colonnes entièrement vides, ce qui peut surprendre si le tableau contient des trous.

`Set` est nécessaire ici parce que `sheet` et `dataRange` contiennent des références vers des objets Excel, pas de simples valeurs.
-->
