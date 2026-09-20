---
layout: StaticCodeExampleLayout
kicker: Syntaxe
title: Anatomie d'une sous-routine
caption: Un bloc nommé, exécutable, avec une instruction par ligne.
slide_info: false
---

```vb
Option Explicit

' Writes a greeting in the Immediate window.
Sub SayHello()
    Debug.Print "Bonjour"
End Sub
```

- `Option Explicit`
- `Sub` / `End Sub`
- Nom clair
- Une instruction par ligne

<!--
Notes formateur :

Partir de ce bloc comme forme minimale.

Expliquer :
- Option Explicit se place en haut du module ;
- Sub ouvre une procédure ;
- End Sub ferme la procédure ;
- le nom ne contient pas d'espace ;
- Debug.Print permet de voir un résultat sans modifier Excel.

Ne pas encore parler de Function, paramètres ou portée avancée.
-->
