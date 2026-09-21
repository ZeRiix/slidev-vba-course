---
layout: StaticCodeExampleLayout
kicker: Conversions
title: Passer d'un type à l'autre
caption: Une valeur texte doit parfois devenir un nombre, une date ou un montant.
slide_info: false
---

```vb
Sub ConversionExample()
    Dim priceText As String
    Dim price As Currency
    Dim label As String

    priceText = "19,90"
    price = CCur(priceText)
    label = CStr(price)
End Sub
```

- `CStr` : valeur vers texte.
- `CLng` : valeur vers entier.
- `CDbl` : valeur vers décimal.
- `CCur` : valeur vers montant.
- `CDate` : valeur vers date.

<TheDocumentation
  label="Documentation : conversions"
  href="https://learn.microsoft.com/fr-fr/office/vba/language/reference/user-interface-help/conversion-functions"
/>

<!--
Mémo :

Une conversion explicite rend visible le passage d'une représentation à une autre : texte vers montant, nombre vers texte, texte vers date, etc.

Ce point est fréquent avec Excel et les CSV : une valeur peut ressembler à un nombre dans une cellule ou dans un fichier, mais arriver dans VBA comme une chaîne.

Une conversion peut échouer si le contenu ne correspond pas au type attendu, par exemple `CCur("abc")`. Plus tard, la gestion d'erreur permettra de reprendre la main proprement.
-->
