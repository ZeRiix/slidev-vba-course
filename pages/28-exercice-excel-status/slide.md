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
Notes formateur :

Premier exercice Excel volontairement simple : lecture cellule, condition, écriture cellule, boucle.

Ne pas encore gérer la dernière ligne dynamique si le groupe est fragile. Si le groupe suit bien, montrer ensuite comment remplacer 5 ou 6 par une dernière ligne calculée.
-->
