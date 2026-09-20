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
Notes formateur :

Expliquer l'idée de conditions exclusives : un seul chemin doit être pris.

Mauvais réflexe à éviter :
- If dans un If dans un If ;
- plusieurs conditions qui peuvent se contredire ;
- blocs longs où on ne sait plus à quel End If on est rattaché.

Dire clairement que VBA n'aide pas beaucoup côté expérience développeur : beaucoup de End If, peu de confort visuel, erreurs parfois peu explicites. D'où l'intérêt de garder des blocs courts et lisibles.
-->
