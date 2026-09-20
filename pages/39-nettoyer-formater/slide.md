---
layout: StaticCodeExampleLayout
kicker: Excel
title: Nettoyer et formater rapidement
caption: Quelques appels simples rendent une macro plus utilisable.
slide_info: false
---

```vb
Sub PrepareReportTable()
    Dim sheet As Worksheet
    Dim dataRange As Range
    Dim lastRow As Long

    Set sheet = ActiveSheet
    Set dataRange = sheet.Range("A1").CurrentRegion
    lastRow = sheet.Cells(sheet.Rows.Count, "A").End(xlUp).Row

    dataRange.Columns.AutoFit
    dataRange.Rows(1).Font.Bold = True
    dataRange.Rows(1).Interior.Color = RGB(217, 225, 242)

    sheet.Range("C2:C" & lastRow).ClearContents
    sheet.Range("B:B").NumberFormat = "#,##0.00 €"
End Sub
```

::note::

<TheDownload label="Télécharger le mini-reporting" href="./exercice-outils-excel.zip" />

- `AutoFit` ajuste les largeurs.
- `ClearContents` vide les valeurs.
- `NumberFormat` force l'affichage.
- Ressource : CSV + squelette VBA.

<!--
Notes formateur :

Expliquer que le format n'est pas juste esthétique : il rend le résultat lisible et exploitable.

La ressource peut servir de départ pour un exercice plus complet : importer un CSV, préparer la table, ajouter un bouton, puis actualiser les données.
-->
