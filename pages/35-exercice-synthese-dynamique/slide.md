---
layout: ExerciseLayout
kicker: Exercice Excel
title: Classer une table de taille variable
duration: 25 min
durationLabel: durée estimée
slide_info: false
---

<div class="course-exercise-grid">

<div>

Créer une macro `ClassifyDynamicAmounts`.

<TheDownload label="Télécharger l'exercice" href="./exercice-table-dynamique.zip" />

Point de départ dans Excel :

| Client | Ville | Montant | Payé | Statut |
|---|---|---:|---|---|
| Nadia Martin | Paris | 1200 | Non | |
| Paul Durand | Lyon | 850 | Oui | |
| Emma Petit | Nantes | 400 | Non | |

Attendu :

- trouver la dernière ligne automatiquement
- parcourir de la ligne 2 à la dernière ligne
- lire le montant en colonne C
- écrire `Important` en colonne E si le montant est supérieur à 1000
- écrire `Normal` en colonne E sinon
- afficher le total des montants en bas de la colonne C

</div>

<div class="course-expected-result">

Point de départ code :

```vb
Sub ClassifyDynamicAmounts()
    Dim sheet As Worksheet
    Dim lastRow As Long
    Dim rowIndex As Long

    Set sheet = ActiveSheet
    lastRow = sheet.Cells(sheet.Rows.Count, "A").End(xlUp).Row

    ' TODO: loop rows and write status
End Sub
```

</div>

</div>

<!--
Mémo :

Cet exercice reprend le classement de montants, mais retire l'hypothèse fragile du nombre de lignes fixe.

Le test important après la macro : ajouter une ligne dans Excel, relancer, et vérifier que la nouvelle ligne est bien traitée sans changer le code.

Le total en bas de colonne oblige à distinguer deux zones : les lignes de données à parcourir, puis la ligne de restitution située après `lastRow`.
-->
