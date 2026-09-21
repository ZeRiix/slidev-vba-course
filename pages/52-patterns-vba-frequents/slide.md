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
Mémo :

Cette slide est une boîte à outils par situation.

Pour retrouver une fonction, commencer par formuler le problème :

- nettoyer ou découper du texte ;
- convertir une valeur ;
- vérifier avant de convertir ;
- travailler avec des dates ;
- dialoguer avec l'utilisateur ;
- diagnostiquer une erreur ;
- accélérer une macro longue.

Le bon réflexe n'est pas de mémoriser chaque nom, mais de reconnaître la famille du besoin puis de retrouver la fonction adaptée.

`Application.ScreenUpdating = False` peut accélérer une macro qui modifie beaucoup l'écran, mais il faut penser à réactiver l'affichage à la fin, surtout en cas d'erreur.
-->
