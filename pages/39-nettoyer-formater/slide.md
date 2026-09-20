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

    ' TODO: adjust column widths
    ' TODO: format header
    ' TODO: clear old comments in column E
    ' TODO: apply currency format to column C
End Sub
```

::note::

<TheDownload label="Télécharger la ressource" href="./exercice-outils-excel.zip" />

- `AutoFit` ajuste les largeurs.
- `ClearContents` vide les valeurs.
- `NumberFormat` force l'affichage.
- Colonnes : montant en `C`, statut en `D`, commentaire en `E`.
- Ressource : CSV + squelette VBA.

<!--
Notes formateur :

Expliquer que le format n'est pas juste esthétique : il rend le résultat lisible et exploitable.

Le dataset pourra être réutilisé plus tard pour un exercice de workflow plus complet.
-->
