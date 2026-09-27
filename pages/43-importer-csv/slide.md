---
layout: StaticCodeExampleLayout
kicker: Excel
title: Importer un CSV
caption: En pratique, on réutilise souvent un bloc et on change seulement quelques paramètres.
slide_info: false
---

```vb
Sub ImportCsv()
    Dim selectedFile As Variant
    Dim csvWorkbook As Workbook

    selectedFile = Application.GetOpenFilename( _
        FileFilter:="Fichiers CSV (*.csv),*.csv", _
        Title:="Sélectionner le fichier CSV")

    If VarType(selectedFile) = vbBoolean Then Exit Sub

    Call Workbooks.OpenText( _
        Filename:=selectedFile, _
        DataType:=xlDelimited, _
        Semicolon:=True, _
        Local:=True)

    Set csvWorkbook = ActiveWorkbook

    Call csvWorkbook.Worksheets(1).UsedRange.Copy( _
        Destination:=ThisWorkbook.Worksheets("Data").Range("A1"))

    Call csvWorkbook.Close(SaveChanges:=False)
End Sub
```

::note::

- À choisir : le fichier CSV.
- À adapter selon le fichier : le séparateur (`Semicolon:=True`).
- À choisir dans le classeur : la feuille et la cellule de destination.
- Le reste peut rester fourni comme une recette.

<!--
Mémo :

`Workbooks.OpenText` ouvre le CSV comme un classeur temporaire. Ensuite, la macro copie les cellules utiles vers le classeur qui contient le code.

`GetOpenFilename` affiche une boîte de dialogue de choix de fichier et renvoie son chemin ; le fichier n'est pas ouvert automatiquement.

`ThisWorkbook` désigne le classeur où se trouve la macro. `ActiveWorkbook`, juste après l'ouverture du CSV, désigne le classeur CSV qui vient de devenir actif.

Cette différence est cruciale : confondre les deux peut faire copier depuis ou vers le mauvais fichier.

Fermer `csvWorkbook` avec `SaveChanges:=False` évite de laisser ouvert un classeur intermédiaire et de demander une sauvegarde inutile.

Documentation utile :

- `Application.GetOpenFilename`
  https://learn.microsoft.com/fr-fr/office/vba/api/excel.application.getopenfilename
- `Workbooks.OpenText`
  https://learn.microsoft.com/fr-fr/office/vba/api/excel.workbooks.opentext
-->
