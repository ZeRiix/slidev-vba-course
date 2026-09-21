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
Mémo :

Une Table Excel structurée est représentée en VBA par un `ListObject`.

Son avantage principal est qu'elle porte un nom et s'étend naturellement quand on ajoute des lignes. Le code dépend moins d'une adresse fixe comme `A1:D20`.

`DataBodyRange` désigne le corps des données, sans la ligne d'en-tête. `ListRows` permet de parcourir les lignes de la table comme une collection.

Dans un fichier métier, une Table nommée est souvent plus stable qu'une plage détectée approximativement.
-->
