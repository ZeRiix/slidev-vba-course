---
layout: ExerciseLayout
kicker: Exercice Excel
title: Macro sur sélection
duration: 20 min
durationLabel: durée estimée
slide_info: false
---

<div class="course-exercise-grid">

<div>

Créer une macro `ApplyStatusToSelection`.

<TheDownload label="Télécharger l'exercice" href="./exercice-selection.zip" />

Usage attendu :

- l'utilisateur sélectionne des montants
- la macro lit uniquement la sélection
- le statut est écrit dans la cellule à droite
- les montants importants sont colorés

Règles :

- `> 1000` : `Important`
- sinon : `Normal`

</div>

<div class="course-expected-result">

Point de départ :

```vb
Sub ApplyStatusToSelection()
    Dim amountCell As Range

    If TypeName(Selection) <> "Range" Then Exit Sub

    For Each amountCell In Selection.Cells
        ' TODO: test amount and write result at right
    Next amountCell
End Sub
```

Bonus : associer la macro à un raccourci clavier.

</div>

</div>

<!--
Notes formateur :

Faire manipuler dans Excel : sélectionner B2:B5, lancer la macro, puis sélectionner une autre zone.

Le bonus raccourci peut se faire par l'interface Excel : Alt+F8 > Options.
-->
