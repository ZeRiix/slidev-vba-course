---
layout: StaticCodeExampleLayout
kicker: Interaction
title: Demander une valeur
caption: "`InputBox` renvoie du texte : on convertit si l'on veut un nombre."
slide_info: false
---

```vb
Sub AskAmount()
    Dim amountText As String
    Dim amount As Currency

    amountText = InputBox("Montant ?")
    amount = CCur(amountText)
End Sub
```

- La saisie arrive dans une variable `String`.
- `CCur` convertit le texte en montant.
- On traitera les cas invalides plus tard.

<TheDocumentation
  label="Documentation : InputBox"
  href="https://learn.microsoft.com/fr-fr/office/vba/language/reference/user-interface-help/inputbox-function"
/>

<!--
Notes formateur :

Faire le lien avec les conversions : InputBox ne devine pas le type métier attendu.

Ne pas encore traiter annulation, saisie vide ou validation complète.
-->
