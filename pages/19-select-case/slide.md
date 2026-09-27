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
            Call Debug.Print("Aucune action")
        Case "Pending"
            Call Debug.Print("Relancer le client")
        Case "Cancelled"
            Call Debug.Print("Archiver")
        Case Else
            Call Debug.Print("Statut inconnu")
    End Select
End Sub
```
::note::
- Une valeur de départ.
- Plusieurs `Case`.
- `Case Else` pour le reste.

<!--
Mémo :

`Select Case` est utile quand plusieurs branches dépendent de la même expression de départ.

Il remplace avantageusement une longue série de `ElseIf status = ...`, surtout quand les valeurs possibles sont des libellés métier.

`Case Else` joue le rôle de filet de sécurité : il traite les valeurs inconnues, mal saisies ou non encore prévues.
-->
