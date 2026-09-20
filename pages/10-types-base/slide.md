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
Notes formateur :

Présenter les types comme une contrainte utile : le type indique ce que la variable a le droit de contenir.

Points à dire :
- String pour du texte ;
- Boolean pour True/False ;
- Long est souvent préférable à Integer pour les entiers courants ;
- Double pour les nombres décimaux ;
- Currency pour les montants ;
- Date contient une date et éventuellement une heure ;
- Variant existe, mais on l'évite au début parce qu'il revient à dire "je laisse VBA deviner". Faire le lien avec any en TypeScript.

Ne pas entrer dans les types objets : Worksheet, Range, Workbook, Object, etc. Ils seront vus dans la partie modèle objet.
-->
