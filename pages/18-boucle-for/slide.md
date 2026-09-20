---
layout: StaticCodeExampleLayout
kicker: Boucles
title: Répéter avec For
caption: "`For` sert quand le nombre de répétitions est connu."
slide_info: false
---

```vb
Sub DisplayNumbers()
    Dim counter As Long

    For counter = 1 To 5
        Debug.Print counter
    Next counter
End Sub
```

- Le compteur change à chaque tour.
- Les bornes sont incluses.
- `Next` passe au tour suivant.

<!--
Notes formateur :

Faire lire la boucle à l'oral : pour counter de 1 à 5, afficher counter.

À faire manipuler :
- passer de 1 To 10 ;
- démarrer à 0 ;
- ajouter Step 2 ;
- afficher seulement un texte avec le numéro.
-->
