---
layout: TheoryContentLayout
kicker: Excel
title: CheckBox et contrôles simples
slide_info: false
---

| Contrôle | Usage typique | À retenir |
|---|---|---|
| `CheckBox` | activer une option oui / non | peut écrire `TRUE` / `FALSE` dans une cellule liée |
| `ComboBox` | choisir une valeur dans une liste | utile si la liste doit rester visible comme contrôle |
| Zone de liste | choisir parmi plusieurs éléments | à réserver aux interfaces un peu plus guidées |
| Cellule + validation | saisir ou choisir une valeur | souvent plus simple, plus robuste, plus Excel |

Les contrôles de formulaire ouvrent des possibilités, mais ils ajoutent aussi une couche d'interface.

Pour une saisie simple, une cellule nommée avec validation de données suffit souvent.

<!--
Mémo :

Les contrôles Excel ajoutent une couche d'interface au classeur. Ils sont utiles quand l'utilisateur doit choisir une option sans toucher au code.

Mais chaque contrôle ajoute aussi de la maintenance : lien avec une cellule, nom du contrôle, comportement à tester, compatibilité avec la feuille.

Pour une saisie simple, une cellule nommée avec validation de données est souvent plus robuste qu'un contrôle graphique.

La question à se poser : est-ce que le contrôle simplifie vraiment l'usage, ou est-ce qu'une cellule bien préparée suffit ?
-->
