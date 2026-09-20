---
layout: StaticCodeExampleLayout
kicker: Structure
title: Découper avec des fonctions
caption: Une `Sub` lance une action, une `Function` renvoie une valeur.
slide_info: false
---

```vb
Sub ShowCustomerAction()
    Dim status As String
    status = "Pending"

    Debug.Print GetAction(status)
End Sub

Function GetAction(status As String) As String
    If status = "Pending" Then
        GetAction = "Relancer le client"
    Else
        GetAction = "Aucune action"
    End If
End Function
```

::note::

- `Sub` : exécute un traitement.
- `Function` : calcule une valeur.
- Les paramètres rendent le code réutilisable.
- Le nom de la fonction reçoit le résultat.

<!--
Notes formateur :

Insister sur le découpage : une fonction porte une règle simple et testable.

Mentionner en une phrase qu'une Function VBA peut aussi devenir une fonction personnalisée utilisable dans Excel, sans développer.
-->
