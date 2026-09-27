---
layout: ExerciseLayout
kicker: Exercice de synthèse
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
    "Emma Petit;Cancelled;400", _
    "Lucas Bernard;Pending;650" _
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

Règles :

- `Paid` : `Aucune action`
- `Cancelled` : `Archiver`
- `Pending` > 1000 : `Relance prioritaire`
- `Pending` <= 1000 : `Relancer le client`
- autre statut : `Vérifier manuellement`

Résultat attendu :

```text
Nadia Martin : Relance prioritaire
Paul Durand : Aucune action
Emma Petit : Archiver
Lucas Bernard : Relancer le client
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

`Split(text, ";")` découpe la chaîne et renvoie un tableau. Ici, le séparateur est le point-virgule.

Le découpage en `GetAction` et `IsHighAmount` évite de tout mettre dans la boucle principale.

`IsHighAmount` doit servir à distinguer une relance normale d'une relance prioritaire.
-->
