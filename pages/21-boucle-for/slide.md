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
Mémo :

`For` convient quand on connaît les bornes de répétition avant d'entrer dans la boucle.

Les bornes sont incluses : `1 To 5` exécute le bloc pour `1`, `2`, `3`, `4` et `5`.

Le compteur est souvent utilisé soit comme valeur à afficher, soit comme indice de tableau, soit comme numéro de ligne Excel.

`Step` permet de changer l'incrément quand on veut avancer de 2 en 2 ou parcourir en sens inverse.
-->
