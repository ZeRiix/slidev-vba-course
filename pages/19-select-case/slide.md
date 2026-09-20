---
layout: StaticCodeExampleLayout
kicker: Conditions
title: Choisir parmi plusieurs cas
caption: "`Select Case` est lisible quand on teste plusieurs valeurs possibles."
slide_info: false
---

```vb
Sub CheckStatus()
    Dim status As String
    status = "Pending"

    Select Case status
        Case "Paid"
            Debug.Print "Aucune action"
        Case "Pending"
            Debug.Print "Relancer le client"
        Case "Cancelled"
            Debug.Print "Archiver"
        Case Else
            Debug.Print "Statut inconnu"
    End Select
End Sub
```
::note::
- Une valeur de départ.
- Plusieurs `Case`.
- `Case Else` pour le reste.

<!--
Notes formateur :

Expliquer que Select Case évite une longue chaîne de ElseIf quand on teste la même variable.

À faire manipuler :
- changer status ;
- ajouter un Case "Late" ;
- demander ce qui se passe avec une valeur inconnue.
-->
