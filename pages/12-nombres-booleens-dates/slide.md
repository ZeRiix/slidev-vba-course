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
Notes formateur :

Faire remarquer les écritures :
- nombre sans guillemets ;
- booléen avec True ou False ;
- date littérale entourée de # en VBA ;
- multiplication comme en programmation classique.

Indiquer que les dates peuvent être piégeuses selon les formats régionaux. Pour le moment, on reste sur des exemples simples et contrôlés.
-->
