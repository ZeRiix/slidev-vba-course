---
layout: StaticCodeExampleLayout
kicker: Texte
title: Manipuler des chaînes
caption: Le texte se met entre guillemets et se concatène avec `&`.
slide_info: false
---

```vb
Sub TextExample()
    Dim rawName As String
    Dim rawService As String
    Dim cleanName As String
    Dim cleanService As String
    Dim label As String

    rawName = "  Nadia Martin  "
    rawService = "finance"

    cleanName = Trim(rawName)
    cleanService = UCase(rawService)
    label = cleanName & " - " & cleanService

    Debug.Print label
    Debug.Print "Longueur : " & Len(label)
End Sub
```

::note::

- `Trim` nettoie les espaces autour du texte.
- `UCase` uniformise une valeur en majuscules.
- `&` construit un libellé à partir de plusieurs morceaux.
- `Len` vérifie la longueur du résultat.


<!--
Notes formateur :

Faire manipuler rapidement :
- changer les valeurs ;
- concaténer deux chaînes ;
- ajouter un séparateur ;
- afficher en majuscules avec UCase ;
- tester Len pour compter les caractères.

Ne pas transformer la slide en catalogue de fonctions texte.
-->
