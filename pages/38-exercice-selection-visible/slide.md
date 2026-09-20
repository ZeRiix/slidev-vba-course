---
layout: ExerciseLayout
kicker: Exercice Excel
title: Exporter les résultats d'un filtre
duration: 25 min
durationLabel: durée estimée
slide_info: false
---

<div class="course-exercise-grid">

<div>

Créer une macro `ExportVisibleSelection`.

<TheDownload label="Télécharger l'exercice" href="./exercice-selection-visible.zip" />

Usage attendu :

- importer le fichier `opportunites.csv`
- filtrer la table dans Excel
- sélectionner les cellules de la colonne `Client` encore visibles
- lancer la macro pour créer une liste dans la feuille `Export`

La macro doit :

- vérifier que la sélection est une plage Excel
- récupérer uniquement les cellules visibles
- préparer la feuille `Export`
- vider l'ancien résultat
- copier les valeurs visibles dans `Export!A2:A...`

</div>

<div class="course-expected-result">

Point de départ :

```vb
Sub ExportVisibleSelection()
    Dim visibleCells As Range
    Dim cell As Range

    If TypeName(Selection) <> "Range" Then Exit Sub

    Set visibleCells = Selection.SpecialCells(xlCellTypeVisible)

    ' TODO: prepare Export, clear old values,
    ' then copy visible values to Export
End Sub
```

Bonus : ajouter la date d'export en `Export!B1`.

</div>

</div>

<!--
Notes formateur :

Faire manipuler dans Excel : filtrer par région, statut ou commercial, puis sélectionner les cellules visibles de la colonne Client sans l'en-tête.

L'objectif n'est pas d'automatiser le filtre, mais de montrer que la macro respecte le filtre préparé manuellement par l'utilisateur.
-->
