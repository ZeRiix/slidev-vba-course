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
| Débogage | `Debug.Print` | vérifier une valeur pendant l'exécution |
| Performance | `Application.ScreenUpdating = False` | accélérer les macros longues |
| Pour aller plus loin | `WorksheetFunction`, automatisation externe | pistes à explorer hors du coeur du cours |

<!--
Notes formateur :

Faire le lien avec les macros écrites pendant le cours : ce n'est pas une liste plate, c'est une boîte à outils par situation.

Message à faire passer : quand ils bloquent, ils doivent identifier la famille du problème avant de chercher la syntaxe exacte.

La dernière ligne ouvre quelques pistes, sans transformer la conclusion en nouvelle leçon.
-->
