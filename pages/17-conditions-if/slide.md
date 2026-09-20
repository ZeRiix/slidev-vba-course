---
layout: StaticCodeExampleLayout
kicker: Conditions
title: Choisir avec If
caption: Une condition compare des valeurs et produit `True` ou `False`.
slide_info: false
---

<div class="course-code-reference-grid">

<div>

```vb
Sub CheckAmount()
    Dim amount As Currency
    amount = 1200

    If amount > 1000 Then
        Debug.Print "Montant important"
    Else
        Debug.Print "Montant normal"
    End If
End Sub
```

- Le test produit `True` ou `False`.
- `Else` gère l'autre cas.
- `End If` ferme le bloc.

</div>

<div class="course-reference-table">

| Opérateur | Sens |
|---|---|
| `=` | égal à |
| `<>` | différent de |
| `>` / `<` | supérieur / inférieur |
| `>=` / `<=` | supérieur ou égal / inférieur ou égal |
| `And` | les deux conditions sont vraies |
| `Or` | au moins une condition est vraie |
| `Not` | inverse le résultat |

</div>

</div>

<!--
Notes formateur :

Faire le parallèle avec SI dans Excel, mais insister sur la lecture en blocs.

Faire lire rapidement le tableau des opérateurs. L'objectif est que les étudiants sachent lire une condition simple, pas de faire un cours complet de logique booléenne.

À faire manipuler :
- changer amount à 800 ;
- retirer Else pour montrer qu'il est optionnel ;
- demander où commence et où finit le bloc conditionnel.
-->
