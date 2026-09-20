---
layout: VisualContentLayout
kicker: Excel
title: Déclencher une macro avec un bouton
placeholder: "Capture à ajouter : feuille Excel contenant un bouton \"Actualiser le reporting\", associé à une macro RefreshReport. Montrer le bouton au-dessus ou à côté du reporting, sans ouvrir le VBE."
imageFit: contain
contentSpan: 2
gridUnits: 4
slide_info: false
---

Un fichier automatisé doit pouvoir être utilisé depuis Excel.

- Ajouter une **Shape** ou un bouton de formulaire.
- Associer la macro avec clic droit > `Affecter une macro`.
- L'utilisateur lance le workflow sans ouvrir le VBE.
- En VBA, une Shape peut aussi recevoir une action :

```vb
Sub LinkButton()
    Worksheets("Report").Shapes("btnRefresh").OnAction = "RefreshReport"
End Sub
```

<!--
Notes formateur :

Insister sur le bouton comme point d'entrée principal d'un fichier automatisé.

Image souhaitée : feuille Excel contenant un bouton "Actualiser le reporting", associé à une macro RefreshReport.
-->
