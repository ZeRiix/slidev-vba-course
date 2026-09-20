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
Notes formateur :

À ce stade, ils savent écrire des Sub et des fonctions simples. Le nouveau point à poser est le lien entre code VB et action Excel.

Définition courte à donner : une macro est une procédure VBA que l'on peut déclencher depuis Excel pour automatiser une action.

Insister sur la différence :
- écrire du code VB : construire une logique ;
- créer une macro Excel : rendre cette logique déclenchable dans un classeur.

Image souhaitée : une capture large avec Excel + VBE, ou une capture VBE montrant une Sub et la fenêtre Excel Macros / un bouton associé.
-->
