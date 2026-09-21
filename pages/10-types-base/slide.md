---
layout: TheoryContentLayout
kicker: Types
title: Les types de base
slide_info: false
---

| Type | Usage |
|---|---|
| `String` | texte |
| `Boolean` | vrai / faux |
| `Byte`, `Integer`, `Long` | nombres entiers |
| `Single`, `Double` | nombres décimaux |
| `Currency` | montants |
| `Date` | dates et heures |
| `Variant` | non typé |

Hors périmètre ici : objets Excel, classes, formulaires.

<!--
Mémo :

Un type est une contrainte utile : il dit à VBA comment interpréter une valeur et permet de détecter certaines erreurs plus tôt.

Pour les entiers courants, `Long` est souvent préférable à `Integer` en VBA : c'est le choix robuste pour des numéros de lignes, des compteurs ou des quantités.

`Currency` est adapté aux montants parce qu'il évite certains effets d'arrondi des nombres décimaux binaires.

`Variant` signifie que VBA accepte plusieurs natures de valeurs et décide à l'exécution. C'est pratique pour certaines API ou tableaux, mais moins clair pour apprendre et maintenir du code.

Les types comme `Workbook`, `Worksheet` ou `Range` sont des types d'objets Excel ; ils appartiennent à la partie modèle objet.
-->
