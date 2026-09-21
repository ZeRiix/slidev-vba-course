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
Mémo :

Cet exercice rassemble les bases du langage avant Excel : tableau, boucle, découpage de texte, conversion, conditions et fonctions.

Le point clé est de transformer progressivement une ligne texte en informations typées :

`"Nadia Martin;Pending;1200"` -> morceaux avec `Split` -> montant converti avec `CCur` -> action calculée par une `Function`.

Le découpage en `GetAction` et `IsHighAmount` évite de tout mettre dans la boucle principale.
-->
