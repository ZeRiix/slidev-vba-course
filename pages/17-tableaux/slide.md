---
layout: StaticCodeExampleLayout
kicker: Donnees
title: Stocker plusieurs valeurs
caption: Un tableau regroupe plusieurs valeurs dans une seule variable.
slide_info: false
---

```vb
Sub TagsExample()
    Dim tags As Variant
    Dim index As Long

    tags = Array("urgent", "finance", "client")

    For index = LBound(tags) To UBound(tags)
        Debug.Print UCase(tags(index))
    Next index
End Sub
```

::note::

- `Array(...)` crée une liste de valeurs.
- `tags(index)` lit une valeur du tableau.
- `LBound` et `UBound` donnent les bornes.
- Une boucle permet de tout parcourir.

<!--
Notes formateur :

Présenter le tableau comme un concept transversal : on le retrouvera avec Split, avec des listes de lignes, et plus tard avec les données venant d'Excel.

Ne pas parler ici de tableaux multidimensionnels ni de ReDim Preserve.
-->
