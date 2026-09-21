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
Mémo :

Un tableau permet de garder plusieurs valeurs sous un seul nom de variable, puis d'accéder à chaque élément par son indice.

Avec `Array(...)`, les indices commencent généralement à `0`. Utiliser `LBound` et `UBound` évite de supposer les bornes et rend la boucle plus robuste.

Ce modèle reviendra avec `Split`, avec les lignes de fichiers CSV et avec certaines valeurs récupérées depuis Excel.
-->
