---
layout: ExerciseLayout
kicker: Exercice final - Partie 2
title: Traiter des lignes clients
duration: 35 min
durationLabel: durée estimée
slide_info: false
---

<div class="course-exercise-grid">

<div>

Créer une macro `ProcessCustomerRecords`.

Point de départ :

```vb
records = Array( _
    "Nadia Martin;Pending;1200", _
    "Paul Durand;Paid;850", _
    "Emma Petit;Cancelled;400" _
)
```

Étapes :

- parcourir le tableau `records`
- découper chaque ligne avec `Split`
- convertir le montant avec `CCur`
- calculer l'action avec une `Function`
- afficher le résumé avec `Debug.Print`

</div>

<div class="course-expected-result">

Résultat attendu :

```text
Nadia Martin : Relancer le client
Paul Durand : Aucune action
Emma Petit : Archiver
```

Fonctions attendues :

- `GetAction(status, amount)`
- `IsHighAmount(amount)`

</div>

</div>

<!--
Notes formateur :

C'est l'exercice qui rassemble les bases VB : tableaux, Split, variables, conversions, conditions, fonctions, boucles.

Ne pas chercher une correction parfaite tout de suite. L'objectif est de les faire manipuler et de faire émerger le besoin de découpage.
-->
