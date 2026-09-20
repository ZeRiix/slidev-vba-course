---
layout: TheoryContentLayout
kicker: Excel
title: Repères API Excel
slide_info: false
---

| Situation | API utiles | Sert à |
|---|---|---|
| Classeur | `ThisWorkbook`, `ActiveWorkbook` | cibler le fichier courant |
| Feuille | `ActiveSheet`, `Worksheets("Data")`, `.Add` | choisir ou créer une feuille |
| Cellules | `Range`, `Cells`, `.Value`, `.Formula` | lire, écrire, calculer |
| Zones | `CurrentRegion`, `UsedRange`, `.End(xlUp)` | trouver les données |
| Déplacements | `Offset`, `Resize`, `EntireRow`, `EntireColumn` | cibler autour d'une cellule |
| Sélection | `Selection`, `ActiveCell`, `SpecialCells` | agir sur le choix utilisateur |
| Style | `Font`, `Interior`, `Borders`, `NumberFormat`, `AutoFit` | rendre le résultat lisible |
| Tableaux Excel | `ListObjects`, `ListRows`, `DataBodyRange` | manipuler une table structurée |
| Application | `ScreenUpdating`, `EnableEvents`, `Calculation` | contrôler Excel pendant la macro |

<!--
Notes formateur :

Présenter comme une carte des points déjà rencontrés, pas comme une liste à mémoriser.

Dire que les imports, boutons, PDF, TCD et graphiques seront des usages construits plus tard à partir de ces mêmes briques.
-->
