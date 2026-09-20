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

| Client | Montant | Statut |
|---|---:|---|
| Nadia Martin | 1200 | |
| Paul Durand | 850 | |
| Emma Petit | 400 | |

Attendu :

- trouver la dernière ligne automatiquement
- parcourir de la ligne 2 à la dernière ligne
- écrire le statut en colonne C
- afficher le total en bas de la colonne B

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
Notes formateur :

Cet exercice remplace l'idée de ligne fixe par une vraie logique Excel.

Si le groupe avance vite, demander d'ajouter une ligne à la main dans Excel puis de relancer la macro pour vérifier que le code s'adapte.
-->
