---
layout: StaticCodeExampleLayout
kicker: Erreurs
title: Reprendre la main en cas d'erreur
caption: Une macro peut intercepter une erreur technique et afficher un message clair.
slide_info: false
---

```vb
Sub ConvertAmount()
    On Error GoTo ErrorHandler

    Dim amount As Currency
    amount = CCur("abc")

    Exit Sub

ErrorHandler:
    MsgBox "Erreur : " & Err.Description
End Sub
```

- `On Error GoTo ErrorHandler` indique où aller en cas d'erreur.
- `Err.Description` contient le message technique.
- Éviter de masquer les erreurs avec `On Error Resume Next`.

<TheDocumentation
  label="Documentation : On Error"
  href="https://learn.microsoft.com/fr-fr/office/vba/language/reference/user-interface-help/on-error-statement"
/>

<!--
Notes formateur :

Montrer que l'objectif est de reprendre la main et d'expliquer le problème.

Ne pas détailler les numéros d'erreur, les reprises complexes ni les gestionnaires imbriqués.
-->
