---
layout: StaticCodeExampleLayout
kicker: Excel
title: Tables Excel structurées
caption: Quand les données évoluent, une Table est plus robuste qu'une plage fixe.
slide_info: false
---

```vb
Sub ReadCustomerTable()
    Dim table As ListObject
    Dim row As ListRow

    Set table = ActiveSheet.ListObjects("TableClients")

    For Each row In table.ListRows
        Debug.Print row.Range.Cells(1, 1).Value
    Next row

    Debug.Print table.DataBodyRange.Address
End Sub
```

::note::

- `ListObject` représente une Table Excel structurée.
- `DataBodyRange` désigne les lignes de données, sans l'en-tête.
- `ListRows` permet de parcourir les lignes de la table.
- Une table nommée suit mieux les ajouts de lignes qu'une plage écrite en dur.

<!--
Notes formateur :

Montrer dans Excel : transformer une plage en table, lui donner le nom TableClients, ajouter une ligne, puis relancer la macro.

Rester volontairement limité : nom de table, corps des données, lignes. Les colonnes nommées, les filtres de table et les connexions seront vus plus tard si le projet le demande.
-->
