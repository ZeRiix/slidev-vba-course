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
Mémo :

Une `Function` porte une règle qui calcule une valeur de retour. En VBA, on renvoie cette valeur en affectant le résultat au nom de la fonction.

Les paramètres rendent la fonction indépendante d'une variable précise du programme appelant : `GetAction(status)` reçoit une donnée, applique sa règle, puis renvoie un texte.

Découper une règle dans une fonction facilite la lecture et les tests : on peut vérifier `GetAction` sans relire toute la macro.

Une fonction VBA publique peut aussi être utilisée comme fonction personnalisée dans une cellule Excel, si elle respecte les contraintes attendues par Excel.
-->
