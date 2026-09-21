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
Mémo :

Un bouton transforme une macro en outil utilisable sans ouvrir le VBE.

Pour l'utilisateur, le point d'entrée devient une action métier comme "Actualiser le reporting", pas le nom d'une procédure dans l'éditeur.

`.OnAction = "RefreshReport"` associe une forme Excel au nom d'une macro. Le nom doit rester stable : si la procédure est renommée, le bouton doit être mis à jour.

Ce pattern est fréquent dans les classeurs automatisés : une feuille de paramètres ou de rapport contient un bouton qui lance tout le workflow.
-->
