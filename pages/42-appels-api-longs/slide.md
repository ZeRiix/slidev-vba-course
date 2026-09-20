---
layout: StaticCodeExampleLayout
kicker: VBA
title: Lire les appels API plus longs
caption: Un appel Office peut être long sans être algorithmiquement complexe.
slide_info: false
---

```vb
Workbooks.OpenText _
    Filename:=filePath, _
    DataType:=xlDelimited, _
    Semicolon:=True, _
    Local:=True
```

::note::

- `NomArgument:=valeur` indique explicitement quel paramètre est fourni.
- `_` continue l'instruction VBA sur la ligne suivante.
- Les paramètres techniques peuvent rendre un appel impressionnant.
- La logique reste souvent simple : ouvrir, copier, formater, fermer.

<!--
Notes formateur :

Ne pas faire un cours sur tous les paramètres optionnels.

Message à faire passer : quand une API Office a beaucoup de paramètres, on lit surtout les noms des arguments et on repère les quelques valeurs qui changent vraiment.
-->
