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
Mémo :

Déboguer consiste d'abord à observer l'état réel du programme : quelle valeur contient la variable, quelle branche du `If` est prise, combien de tours fait la boucle.

`Debug.Print` écrit dans la fenêtre Exécution du VBE. C'est temporaire : cela ne change pas le classeur Excel et ne fait pas partie du résultat livré à l'utilisateur.

Bon réflexe : vérifier une hypothèse avec une impression courte avant de modifier plusieurs lignes de code.
-->
