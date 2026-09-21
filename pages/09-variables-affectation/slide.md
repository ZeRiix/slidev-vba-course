---
layout: StaticCodeExampleLayout
kicker: Variables
title: Déclarer une variable
slide_info: false
---

```vb
Sub VariableExample()
    ' Declarations
    Dim firstName As String
    Dim age As Integer

    ' Assignments
    firstName = "Nadia"
    age = 19

    Debug.Print firstName
    Debug.Print age
End Sub
```

- **Déclarer avant d'utiliser** : VBA doit connaître le nom et le type de la variable.

<!--
Mémo :

`Dim` sert à **déclarer** une variable : on annonce à VBA qu'un nom va exister pendant l'exécution.

`As String` ou `As Integer` précise le **type**, donc la nature des valeurs acceptées et une partie des opérations possibles.

Dans cet exemple, `firstName` et `age` sont des variables **locales** : elles existent seulement pendant l'exécution de `VariableExample`.

Déclarer séparément puis affecter aide à distinguer deux questions : "quel emplacement mémoire est disponible ?" et "quelle valeur met-on dedans maintenant ?"
-->
