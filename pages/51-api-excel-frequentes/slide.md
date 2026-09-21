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
Mémo :

Cette slide est une carte de recherche, pas une liste à apprendre par coeur.

Quand un besoin revient, commencer par identifier la famille :

- lire ou écrire une cellule -> `Range`, `Cells`, `.Value` ;
- trouver une zone -> `CurrentRegion`, `.End(xlUp)` ;
- agir sur le choix utilisateur -> `Selection`, `SpecialCells` ;
- produire un livrable -> `ExportAsFixedFormat` ;
- actualiser une synthèse -> `PivotTables`, `RefreshTable`.

Une fois la famille retrouvée, repartir vers une macro du cours ou vers la documentation pour récupérer la syntaxe exacte.
-->
