---
layout: TheoryContentLayout
kicker: VBA
title: Fonctions et patterns courants
slide_info: false
---

| Famille | À connaître | Usage typique |
|---|---|---|
| Texte | `Trim`, `Replace`, `Split`, `Join`, `InStr` | nettoyer, découper, chercher |
| Casse | `UCase`, `LCase` | normaliser une comparaison |
| Extraction | `Left`, `Right`, `Mid`, `Len` | lire une partie de texte |
| Conversion | `CStr`, `CLng`, `CDbl`, `CCur`, `CDate` | passer d'un type à un autre |
| Tests | `IsNumeric`, `IsDate`, `IsEmpty` | éviter les erreurs de conversion |
| Dates | `Date`, `Now`, `DateAdd`, `DateDiff`, `Format` | calculer ou afficher une date |
| Dialogue | `MsgBox`, `InputBox` | interaction simple avec l'utilisateur |
| Erreurs | `On Error GoTo`, `Err.Number`, `Err.Description` | reprendre la main proprement |
| Performance | `Application.ScreenUpdating = False` | accélérer les macros longues |
| Raccourcis | `Application.OnKey`, Alt+F8 > Options | lancer vite une macro |
| Objet externe | `CreateObject(...)` | appeler fichier, HTTP ou automatisation |
| Excel calcul | `WorksheetFunction.SumIf`, `CountIf` | réutiliser des fonctions Excel |

<!--
Notes formateur :

Faire le lien avec les raccourcis Excel : ce n'est pas une liste plate, c'est une boîte à outils par situation.

Message à faire passer : quand ils bloquent, ils doivent identifier la famille du problème avant de chercher la syntaxe exacte.
-->
