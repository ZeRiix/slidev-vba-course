---
layout: VisualContentLayout
kicker: Excel
title: Qu'est-ce qu'une macro ?
placeholder: "Capture à ajouter : Excel à gauche, VBE à droite, avec une Sub visible et la fenêtre Macros ou un bouton Excel relié à cette Sub."
imageFit: contain
slide_info: false
image: ./image.png
---

Une macro, c'est une **procédure VBA exécutable depuis Excel**.

- Elle commence par `Sub`.
- Elle porte un **nom appelable**.
- Elle agit sur le classeur, la feuille ou la sélection.
- Elle peut être lancée par menu, raccourci, bouton ou événement.

```vb
Sub BoldSelection()
    Selection.Font.Bold = True
End Sub
```

<!--
Mémo :

Une macro Excel est le point de rencontre entre une procédure VBA et l'interface Excel.

Techniquement, une macro est généralement une `Sub` accessible depuis Excel : menu Macros, raccourci, bouton, forme, événement ou autre déclencheur.

Écrire du code VBA construit la logique. Créer une macro utilisable consiste à rendre cette logique déclenchable dans un classeur par quelqu'un qui n'ouvre pas forcément le VBE.

Dans `Selection.Font.Bold = True`, `Selection` désigne ce que l'utilisateur a sélectionné dans Excel. C'est pratique, mais le résultat dépend donc de l'état de l'interface au moment du lancement.
-->
