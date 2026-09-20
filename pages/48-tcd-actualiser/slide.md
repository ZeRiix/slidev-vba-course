---
layout: StaticCodeExampleLayout
kicker: Excel
title: Actualiser un tableau croisé dynamique
caption: Le cas courant : le TCD existe déjà, la macro le remet à jour.
slide_info: false
---

```vb
Sub RefreshPivot()
    Dim pivot As PivotTable

    Set pivot = Worksheets("Report").PivotTables("PivotSales")
    pivot.RefreshTable
End Sub
```

::note::

- `PivotTable` représente un tableau croisé dynamique existant.
- `Worksheets("Report").PivotTables(...)` cible le TCD par son nom.
- `RefreshTable` recharge le résultat depuis sa source.
- Le `PivotCache` porte la source utilisée par le TCD.
- La macro ne recrée pas le TCD : elle automatise son actualisation.

<!--
Notes formateur :

Montrer dans Excel où trouver le nom du TCD si possible.

Ne pas détailler la création complète d'un tableau croisé dynamique.
-->
