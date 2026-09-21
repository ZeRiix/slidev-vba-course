---
layout: StaticCodeExampleLayout
kicker: Interaction
title: Afficher un message
caption: "`MsgBox` permet de donner une information simple à l'utilisateur."
slide_info: false
---

```vb
Sub NotifyUser()
    MsgBox "Traitement terminé"
End Sub
```

```vb
MsgBox "Montant invalide", vbExclamation, "Contrôle"
```

- Confirmation de fin.
- Avertissement.
- Message d'erreur métier.

<TheDocumentation
  label="Documentation : MsgBox"
  href="https://learn.microsoft.com/fr-fr/office/vba/language/reference/user-interface-help/msgbox-function"
/>

<!--
Mémo :

`MsgBox` est destiné à l'utilisateur final : confirmation, avertissement ou message d'erreur compréhensible.

À distinguer de `Debug.Print`, qui sert au développeur pendant la construction de la macro.

Une boîte de dialogue interrompt l'exécution tant que l'utilisateur n'a pas répondu. C'est utile pour un message important, mais gênant dans une macro longue ou répétitive.
-->
