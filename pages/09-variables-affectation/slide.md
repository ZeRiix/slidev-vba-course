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
Notes formateur :

Faire verbaliser la différence entre déclarer et affecter.

À expliquer :
- Dim crée la variable ;
- As précise le type ;
- = affecte une valeur ;
- Debug.Print lit la valeur et l'affiche.

Insister sur le fait que = ne démarre pas une formule comme dans Excel.

Il existe aussi des variables déclarées hors procédure, au niveau du module avec Private ou Public. Ne pas les présenter ici : pour débuter, on garde les variables locales dans une Sub afin d'éviter les effets de bord.
-->
