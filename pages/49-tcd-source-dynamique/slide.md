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
Notes formateur :

Comparer rapidement plage fixe et Table Excel structurée.

Message principal : convertir la source en Table est souvent la meilleure solution avant d'écrire plus de VBA.
-->
