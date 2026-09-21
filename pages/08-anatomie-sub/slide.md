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
Mémo :

`Sub` définit une **procédure** : un bloc d'instructions regroupées sous un nom et exécutables ensemble.

`Option Explicit` se place en haut d'un module. Son intérêt principal est de transformer une faute de frappe dans un nom de variable en erreur détectable, au lieu de laisser VBA créer ou interpréter un nom inattendu.

Le nom d'une procédure sert de point d'entrée : c'est ce nom que l'on lancera depuis le VBE, depuis Excel ou depuis une autre procédure.

`Debug.Print` permet d'observer ce que fait le programme sans écrire dans une cellule ni afficher de boîte de dialogue.
-->
