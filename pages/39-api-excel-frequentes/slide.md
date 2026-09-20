---
layout: TheoryContentLayout
kicker: Excel
title: API Excel fréquentes
slide_info: false
---

| Catégorie | API utiles | Sert à |
|---|---|---|
| Classeur | `ThisWorkbook`, `ActiveWorkbook`, `Workbooks.Open`, `.SaveAs` | cibler, ouvrir, sauvegarder |
| Feuille | `ActiveSheet`, `Worksheets("Data")`, `.Add`, `.Delete` | choisir ou créer une feuille |
| Cellules | `Range`, `Cells`, `.Value`, `.Formula` | lire, écrire, calculer |
| Zones | `CurrentRegion`, `UsedRange`, `.End(xlUp)` | trouver les données |
| Déplacements | `Offset`, `Resize`, `EntireRow`, `EntireColumn` | cibler autour d'une cellule |
| Sélection | `Selection`, `ActiveCell`, `SpecialCells` | agir sur le choix utilisateur |
| Style | `Font`, `Interior`, `Borders`, `NumberFormat`, `AutoFit` | rendre le résultat lisible |
| Tableaux Excel | `ListObjects`, `ListRows`, `DataBodyRange` | manipuler une table structurée |
| Filtres / tri | `AutoFilter`, `Sort`, `ShowAllData` | analyser vite une table |
| TCD | `PivotCaches`, `PivotTables`, `PivotFields`, `RefreshTable` | synthétiser des données |
| Objets feuille | `Shapes`, `Buttons`, `CheckBoxes`, `.OnAction` | ajouter des boutons et contrôles |
| Imports | `Workbooks.OpenText`, `QueryTables.Add`, `RefreshAll` | charger ou actualiser des données |
| Fichiers | `Dir`, `FreeFile`, `Open`, `Close` | lire ou écrire des fichiers simples |
| HTTP | `CreateObject("MSXML2.XMLHTTP")` | appeler un service externe |
| Application | `ScreenUpdating`, `EnableEvents`, `Calculation`, `OnKey` | contrôler Excel pendant la macro |

<!--
Notes formateur :

Présenter comme une carte des zones à explorer, pas comme une liste à mémoriser.

Pour TCD, HTTP, imports et objets de feuille : dire que ce sont des portes d'entrée possibles pour le projet, mais pas des notions à maîtriser entièrement aujourd'hui.
-->
