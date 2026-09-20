---
layout: StaticCodeExampleLayout
kicker: Excel
title: Lire et écrire des cellules
caption: "`Range` est lisible, `Cells` devient pratique avec les boucles."
slide_info: false
---

```vb
Sub ReadAndWriteCells()
    Dim amount As Currency

    amount = Range("A2").Value

    Range("B2").Value = amount * 1.2
    Cells(2, 3).Value = "OK"
End Sub
```

::note::

- `Range("A2")` cible une adresse connue.
- `.Value` lit ou écrit le contenu.
- `Cells(2, 3)` correspond à `C2`.
- Les numéros deviennent utiles dans une boucle.

<!--
Notes formateur :

Montrer rapidement dans Excel : A2 contient un montant, B2 reçoit le TTC, C2 reçoit un statut.
-->
