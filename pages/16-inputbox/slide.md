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
Mémo :

`InputBox` renvoie toujours une chaîne de caractères. Même si l'utilisateur tape `1200`, VBA reçoit d'abord du texte.

La conversion (`CCur`, `CLng`, `CDate`, etc.) marque le moment où le texte devient une valeur métier utilisable dans des calculs ou des comparaisons.

Dans un vrai fichier, il faut aussi penser aux saisies vides, annulées ou invalides. Cette slide garde seulement le chemin nominal.
-->
