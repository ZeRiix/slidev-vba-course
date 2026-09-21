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
Mémo :

Un TCD peut être construit à la main dans Excel, puis simplement actualisé par VBA.

`Worksheets("Report").PivotTables("PivotSales")` cible un TCD existant par le nom de sa feuille et son nom d'objet.

`RefreshTable` recalcule le TCD à partir de sa source actuelle. La macro ne change pas encore cette source.

Le nom du TCD est donc une dépendance importante : si l'objet est renommé dans Excel, le code doit suivre.
-->
