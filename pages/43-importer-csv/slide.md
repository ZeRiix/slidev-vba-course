---
layout: StaticCodeExampleLayout
kicker: Excel
title: Importer un CSV
caption: En pratique, on réutilise souvent un bloc et on change seulement quelques paramètres.
slide_info: false
---

```vb
Sub ImportCsv()
    Dim filePath As String
    Dim csvWorkbook As Workbook

    filePath = ThisWorkbook.Path & "\reporting_data.csv"

    Workbooks.OpenText _
        Filename:=filePath, _
        DataType:=xlDelimited, _
        Semicolon:=True, _
        Local:=True

    Set csvWorkbook = ActiveWorkbook

    csvWorkbook.Worksheets(1).UsedRange.Copy _
        Destination:=ThisWorkbook.Worksheets("Data").Range("A1")

    csvWorkbook.Close SaveChanges:=False
End Sub
```

::note::

- À modifier souvent : `filePath`.
- À adapter selon le fichier : le séparateur (`Semicolon:=True`).
- À choisir dans le classeur : la feuille et la cellule de destination.
- Le reste peut rester fourni comme une recette.

<!--
Mémo :

`Workbooks.OpenText` ouvre le CSV comme un classeur temporaire. Ensuite, la macro copie les cellules utiles vers le classeur qui contient le code.

`ThisWorkbook` désigne le classeur où se trouve la macro. `ActiveWorkbook`, juste après l'ouverture du CSV, désigne le classeur CSV qui vient de devenir actif.

Cette différence est cruciale : confondre les deux peut faire copier depuis ou vers le mauvais fichier.

Fermer `csvWorkbook` avec `SaveChanges:=False` évite de laisser ouvert un classeur intermédiaire et de demander une sauvegarde inutile.
-->
