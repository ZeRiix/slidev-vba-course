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
Mémo :

Une condition est une **expression booléenne** : après évaluation, elle vaut `True` ou `False`.

`If ... Then` ouvre un bloc exécuté seulement si le test est vrai. `Else` est optionnel : il sert à décrire le chemin alternatif quand on veut traiter l'autre cas.

`And`, `Or` et `Not` composent plusieurs tests, mais il faut rester lisible : une condition très longue cache souvent une règle métier qui mérite d'être découpée.
-->
