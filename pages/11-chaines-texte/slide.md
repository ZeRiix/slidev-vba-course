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

<TheDocumentation
  label="Documentation : fonctions de chaîne"
  href="https://learn.microsoft.com/fr-fr/dotnet/visual-basic/language-reference/functions/string-functions"
/>


<!--
Mémo :

Une chaîne est une valeur textuelle. Même si elle contient des chiffres, elle reste du texte tant qu'elle n'est pas convertie.

`Trim` et `UCase` sont typiques du nettoyage de données : on normalise une valeur avant de l'afficher, de la comparer ou de l'utiliser dans une règle.

`&` est l'opérateur de concaténation en VBA. Il assemble des morceaux de texte sans additionner des nombres.

`Len` mesure le nombre de caractères du résultat, ce qui aide à vérifier rapidement si un nettoyage a produit la valeur attendue.
-->
