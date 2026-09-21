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
Mémo :

`Do While` convient quand la répétition dépend d'une condition plutôt que d'un nombre de tours connu à l'avance.

Comme le test est évalué avant chaque tour, le bloc peut ne jamais s'exécuter si la condition est fausse dès le départ.

Le piège principal est la boucle infinie : la variable utilisée dans la condition doit évoluer dans le bloc, ou quelque chose doit finir par rendre la condition fausse.
-->
