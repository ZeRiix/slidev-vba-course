---
layout: StaticCodeExampleLayout
kicker: Excel
title: Reborner la source d'un TCD
caption: Le vrai risque est souvent une source fixe qui oublie les nouvelles lignes.
slide_info: false
---

```vb
Sub UpdatePivotSource()
    Dim pivot As PivotTable
    Dim sourceRange As Range

    Set sourceRange = Worksheets("Data").Range("A1").CurrentRegion
    Set pivot = Worksheets("Report").PivotTables("PivotSales")

    pivot.ChangePivotCache ThisWorkbook.PivotCaches.Create( _
        SourceType:=xlDatabase, _
        SourceData:=sourceRange)

    pivot.RefreshTable
End Sub
```

::note::

- Une plage fixe comme `A1:D20` casse dès que les données grandissent.
- Une Table structurée suit mieux les ajouts de lignes.
- Lien avec `tables-structurees` : une source `TableReporting` limite les problèmes de bornes.
- Si la source reste une plage, il faut parfois recréer le `PivotCache`.

<!--
Mémo :

Le problème visé ici n'est pas l'actualisation du TCD, mais la taille de sa source.

Si la source reste `A1:D20`, les nouvelles lignes ajoutées en dessous peuvent être ignorées. `CurrentRegion` recalcule une plage autour des données présentes.

`ChangePivotCache` reconnecte le TCD à une nouvelle source. C'est plus fort qu'un simple `RefreshTable`, qui ne fait que relire la source déjà connue.

Quand c'est possible, convertir les données en Table structurée reste souvent la solution la plus stable : la Table suit naturellement les ajouts de lignes.
-->
