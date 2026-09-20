---
layout: TheoryContentLayout
kicker: Excel
title: Repères API Excel
slide_info: false
---

| Situation | API utiles | Sert à |
|---|---|---|
| Classeur | `ThisWorkbook`, `ActiveWorkbook` | cibler le fichier courant |
| Feuilles | `Worksheets("Data")`, `ActiveSheet`, `.Add` | choisir ou créer une feuille |
| Cellules | `Range`, `Cells`, `.Value`, `.Formula` | lire, écrire, calculer |
| Zones | `CurrentRegion`, `UsedRange`, `.End(xlUp)` | trouver les données |
| Déplacements | `Offset`, `Resize`, `EntireRow`, `EntireColumn` | cibler autour d'une cellule |
| Sélection | `Selection`, `ActiveCell`, `SpecialCells` | agir sur le choix utilisateur |
| Style | `Font`, `Interior`, `Borders`, `NumberFormat`, `AutoFit` | rendre le résultat lisible |
| Tableaux Excel | `ListObjects`, `ListRows`, `DataBodyRange` | manipuler une table structurée |
| Import / export | `Workbooks.OpenText`, `ExportAsFixedFormat` | importer un CSV, produire un PDF |
| Interface | `Shapes`, `.OnAction`, `CheckBox` | boutons, formes et contrôles simples |
| TCD | `PivotCaches`, `PivotTables`, `RefreshTable`, `ChangePivotCache` | créer, rafraîchir ou reconnecter un TCD |
| Graphiques | `ChartObjects`, `Chart`, `SetSourceData` | créer un graphique et changer sa source |

<!--
Notes formateur :

Présenter comme une carte des principales API rencontrées pendant le cours, pas comme une liste à mémoriser.

L'objectif est d'en faire une aide-mémoire : quand un besoin revient, on retrouve la famille d'objets, puis on repart vers la documentation ou vers une macro du cours pour retrouver la syntaxe exacte.
-->
