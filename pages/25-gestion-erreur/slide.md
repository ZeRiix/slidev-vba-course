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
Mémo :

Gérer une erreur ne veut pas dire la cacher. L'objectif est de reprendre la main pour afficher un message clair, nettoyer si nécessaire, puis éviter un arrêt brutal incompréhensible.

`On Error GoTo ErrorHandler` détourne l'exécution vers une étiquette quand une erreur technique survient.

`Exit Sub` avant l'étiquette évite d'exécuter le gestionnaire d'erreur quand tout s'est bien passé.

`On Error Resume Next` doit rester exceptionnel : il continue malgré l'erreur et peut donc masquer silencieusement un problème réel.
-->
