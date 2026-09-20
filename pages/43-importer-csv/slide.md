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
Notes formateur :

Présenter `OpenText` comme une recette d'import, pas comme une syntaxe à mémoriser.

Montrer que les paramètres nommés rendent le bloc lisible : on comprend le chemin, le type de fichier, le séparateur et la destination.
-->
