---
layout: StaticCodeExampleLayout
kicker: Boucles
title: Répéter tant qu'une condition est vraie
caption: "`Do While` sert quand l'arrêt dépend d'un test."
slide_info: false
---

```vb
Sub CountUntilLimit()
    Dim counter As Long
    counter = 1

    Do While counter <= 5
        Debug.Print counter
        counter = counter + 1
    Loop
End Sub
```

- Le test est vérifié avant chaque tour.
- La variable testée doit évoluer.
- Sinon la boucle ne s'arrête pas.

<!--
Notes formateur :

Insister sur le danger principal : oublier counter = counter + 1.

Mentionner rapidement qu'il existe d'autres formes de boucles en VBA pour les curieux : Do Until, Loop While, Loop Until. Ne pas les détailler ici.

À faire manipuler :
- changer la limite ;
- démarrer à 3 ;
- demander combien de lignes seront affichées avant exécution.
-->
