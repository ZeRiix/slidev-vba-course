---
layout: StaticCodeExampleLayout
kicker: Excel
title: Exporter en PDF
caption: Une feuille ou une zone Excel peut devenir un livrable sans quitter la macro.
slide_info: false
---

```vb
Sub ExportReportToPdf()
    Dim outputPath As String

    outputPath = ThisWorkbook.Path & "\reporting.pdf"

    Worksheets("Report").ExportAsFixedFormat _
        Type:=xlTypePDF, _
        Filename:=outputPath
End Sub
```

::note::

- `ExportAsFixedFormat` produit un PDF ou un XPS.
- `Type:=xlTypePDF` indique le format de sortie.
- `Filename` donne le chemin complet du fichier.
- Sur une feuille, Excel exporte la zone imprimable ou la feuille entière.
- Sur une `Range`, on peut exporter seulement une zone préparée.

<!--
Notes formateur :

Rester sur la recette utile : chemin, type PDF, objet cible.

Montrer éventuellement qu'une mise en page propre dans Excel améliore directement le PDF généré.
-->
