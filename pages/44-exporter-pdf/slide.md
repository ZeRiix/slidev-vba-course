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
Mémo :

`ExportAsFixedFormat` transforme un objet Excel en livrable fixe, ici un PDF.

Le résultat dépend de l'objet cible : une feuille exporte sa zone imprimable ou son contenu selon la mise en page ; une `Range` permet de limiter l'export à une zone préparée.

Le chemin complet dans `Filename` évite de dépendre du dossier courant d'Excel. `ThisWorkbook.Path` est souvent utilisé pour écrire à côté du fichier automatisé.

Un PDF propre commence souvent par une feuille Excel bien préparée : largeur de colonnes, titres, zone d'impression et formats.
-->
