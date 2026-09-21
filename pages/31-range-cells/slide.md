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
Mémo :

`Range("A2").Value` se lit de gauche à droite : prendre l'objet `Range("A2")`, puis lire sa propriété `.Value`.

Dans `Range("B2").Value = amount * 1.2`, la même propriété est utilisée en écriture.

`Cells(ligne, colonne)` utilise des coordonnées numériques : `Cells(2, 3)` correspond à la cellule C2. Cette forme est idéale quand `ligne` vient d'un compteur de boucle.

Sans objet feuille devant, `Range` et `Cells` ciblent la feuille active. Dans une macro robuste, on préfère souvent `sheet.Range(...)` et `sheet.Cells(...)`.
-->
