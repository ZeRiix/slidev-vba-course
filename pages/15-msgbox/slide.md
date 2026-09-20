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
Notes formateur :

Montrer le premier exemple, puis le deuxième uniquement pour illustrer icône et titre.

Ne pas lister tous les boutons ni toutes les constantes.
-->
