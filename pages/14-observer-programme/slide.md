---
layout: StaticCodeExampleLayout
kicker: Debug
title: Observer son programme
caption: Pendant le développement, on peut afficher une valeur dans la fenêtre Exécution.
slide_info: false
---

```vb
Sub ObserveAmount()
    Dim amount As Currency
    amount = 1200

    Debug.Print amount
End Sub
```

- `Debug.Print` affiche une information temporaire.
- La fenêtre Exécution montre ce qui a été imprimé.
- Utile pour vérifier une variable ou une étape.

<TheDocumentation
  label="Documentation : Debug.Print"
  href="https://learn.microsoft.com/fr-fr/office/vba/language/reference/user-interface-help/print-method"
/>

<!--
Notes formateur :

Montrer la fenêtre Exécution / Immediate Window dans le VBE.

Insister sur le réflexe : regarder une valeur avant de modifier tout le code.
-->
