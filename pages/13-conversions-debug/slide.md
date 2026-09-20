---
layout: StaticCodeExampleLayout
kicker: Conversions
title: Passer d'un type à l'autre
caption: Une saisie texte doit parfois devenir un nombre, une date ou un booléen.
slide_info: false
---

```vb
Sub ConversionExample()
    Dim priceText As String
    Dim price As Currency

    priceText = "19,90"
    price = CCur(priceText)

    Debug.Print price * 2
End Sub
```

- `CStr` : valeur vers texte.
- `CLng` : valeur vers entier.
- `CDbl` : valeur vers décimal.
- `CCur` : valeur vers montant.
- `CDate` : valeur vers date.

<!--
Notes formateur :

Montrer l'idée, pas tous les cas limites.

À expliquer :
- une valeur affichée comme du texte n'est pas forcément un nombre ;
- les fonctions CStr, CLng, CDbl, CCur, CDate convertissent explicitement ;
- une conversion peut échouer si le contenu ne correspond pas au type attendu.

Éviter encore la gestion d'erreur détaillée : elle viendra plus tard.
-->
