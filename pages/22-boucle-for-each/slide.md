---
layout: StaticCodeExampleLayout
kicker: Boucles
title: Parcourir avec For Each
caption: "`For Each` parcourt directement les éléments d'une collection."
slide_info: false
---

```vb
Sub DisplayTags()
    Dim tags As Variant
    Dim tag As Variant

    tags = Array("urgent", "finance", "client")

    For Each tag In tags
        Debug.Print tag
    Next tag
End Sub
```

- `For` parcourt souvent des indices.
- `For Each` parcourt directement des éléments.
- Le code est plus lisible quand l'indice n'est pas utile.

<TheDocumentation
  label="Documentation : For Each...Next"
  href="https://learn.microsoft.com/fr-fr/office/vba/language/reference/user-interface-help/for-eachnext-statement"
/>

<!--
Mémo :

`For Each` évite de manipuler un indice quand l'objectif est simplement de traiter chaque élément.

La variable placée après `For Each` représente l'élément courant. Ici, `tag` prend successivement chaque valeur du tableau.

Cette écriture deviendra très naturelle avec les collections Excel : cellules d'une plage, feuilles d'un classeur, lignes d'une table, etc.
-->
