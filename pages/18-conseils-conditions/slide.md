---
layout: StaticCodeExampleLayout
kicker: Conditions
title: Écrire des conditions lisibles
caption: Comparer deux écritures aide à voir ce qui devient difficile à relire.
slide_info: false
---

<div class="course-code-compare-grid">

<div>

<h2>À éviter</h2>

```vb
If amount > 0 Then
    If amount > 1000 Then
        Debug.Print "Montant important"
    Else
        Debug.Print "Montant normal"
    End If
Else
    Debug.Print "Montant invalide"
End If
```

</div>

<div>

<h2>À préférer</h2>

```vb
If amount <= 0 Then
    Debug.Print "Montant invalide"
ElseIf amount > 1000 Then
    Debug.Print "Montant important"
Else
    Debug.Print "Montant normal"
End If
```

</div>

</div>

- Un seul niveau de lecture.
- Des cas exclusifs.
- Moins de `End If` à suivre.

<!--
Mémo :

Le deuxième exemple organise les cas comme une série de chemins exclusifs : montant invalide, sinon montant important, sinon montant normal.

Cette forme évite d'empiler des `If` dans des `If`, ce qui rend vite difficile de savoir à quel `End If` correspond chaque bloc.

Dans un langage comme VBA, la lisibilité est une protection : l'éditeur signale certaines erreurs, mais il ne rend pas automatiquement une règle métier claire.

Quand les branches deviennent longues, extraire une règle dans une `Function` peut rendre le code plus facile à tester.
-->
