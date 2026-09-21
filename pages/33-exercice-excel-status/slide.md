---
layout: ExerciseLayout
kicker: Exercice Excel
title: Classer des montants dans une feuille
duration: 30 min
durationLabel: durée estimée
slide_info: false
---

<div class="course-exercise-grid">

<div>

Créer une macro `ClassifyAmounts`.

Point de départ dans Excel :

| Client | Montant | Statut |
|---|---:|---|
| Nadia Martin | 1200 | |
| Paul Durand | 850 | |
| Emma Petit | 400 | |
| Lina Robert | 2500 | |

Étapes :

- lire le montant en colonne B
- écrire `Important` si le montant dépasse 1000
- écrire `Normal` sinon
- parcourir toutes les lignes de données

</div>

<div class="course-expected-result">

Résultat attendu :

| Client | Montant | Statut |
|---|---:|---|
| Nadia Martin | 1200 | Important |
| Paul Durand | 850 | Normal |
| Emma Petit | 400 | Normal |
| Lina Robert | 2500 | Important |

</div>

</div>

<!--
Mémo :

Premier exercice Excel : lire une cellule, appliquer une condition, écrire le résultat dans une autre cellule, répéter sur plusieurs lignes.

Le but n'est pas encore de rendre la plage dynamique. On accepte une borne fixe pour isoler la mécanique principale :

`For rowIndex = 2 To 5` -> lire B -> décider -> écrire C.

La slide suivante montrera comment remplacer cette borne fixe par une dernière ligne calculée.
-->
