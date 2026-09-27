---
layout: StaticCodeExampleLayout
kicker: VBA
title: Lire les appels API plus longs
caption: Un appel Office peut être long sans être algorithmiquement complexe.
slide_info: false
---

```vb
Call Workbooks.OpenText( _
    Filename:=filePath, _
    DataType:=xlDelimited, _
    Semicolon:=True, _
    Local:=True)
```

::note::

- `Call` indique que l'on exécute une procédure ou méthode.
- `NomArgument:=valeur` indique explicitement quel paramètre est fourni.
- `_` continue l'instruction VBA sur la ligne suivante.
- Les paramètres techniques peuvent rendre un appel impressionnant.
- La logique reste souvent simple : ouvrir, copier, formater, fermer.

<!--
Mémo :

Les API Office ont souvent beaucoup de paramètres parce qu'elles couvrent de nombreux cas d'usage.

Dans les exemples du cours, `Call NomProcedure(...)` est utilisé quand l'appel exécute une action sans récupérer de valeur de retour.

La syntaxe `NomArgument:=valeur` rend l'appel plus lisible : on comprend quelle option est renseignée sans mémoriser l'ordre complet des paramètres.

Le caractère `_` continue une instruction sur la ligne suivante. Il ne change pas la logique ; il rend seulement un appel long lisible.

En révision, lire ce type de bloc en cherchant d'abord : quel fichier ? quel format ? quel séparateur ? quelle destination ?

Documentation utile : `Workbooks.OpenText`
https://learn.microsoft.com/fr-fr/office/vba/api/excel.workbooks.opentext

La page liste les paramètres disponibles : `Filename`, `DataType`, `Semicolon`, `Comma`, `Local`, séparateurs décimaux, informations de colonnes, etc.
-->
