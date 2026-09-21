---
layout: StaticCodeExampleLayout
kicker: Valeurs
title: Nombres, booléens, dates
caption: Chaque type impose une manière de lire la valeur.
slide_info: false
---

```vb
Sub ValueExample()
    Dim quantity As Long
    Dim unitPrice As Currency
    Dim isActive As Boolean
    Dim deliveryDate As Date

    quantity = 4
    unitPrice = 12.5
    isActive = True
    deliveryDate = #12/31/2026#

    Debug.Print quantity * unitPrice
End Sub
```

::note::
- Un nombre s'écrit sans guillemets.
- `Currency` sert aux montants.
- `Boolean` vaut seulement `True` ou `False`.
- Une date littérale s'écrit entre `#`.

<!--
Mémo :

Les guillemets changent la nature de la valeur : `"12.5"` est du texte, alors que `12.5` est un nombre.

Un `Boolean` sert souvent à représenter un état ou le résultat d'un test : actif/inactif, trouvé/non trouvé, valide/invalide.

Les dates littérales VBA s'écrivent entre `#`. Les formats de date peuvent être sensibles aux paramètres régionaux ; dans un vrai fichier, on privilégie souvent une date venant d'une cellule ou une conversion contrôlée plutôt qu'une date ambiguë écrite en dur.
-->
