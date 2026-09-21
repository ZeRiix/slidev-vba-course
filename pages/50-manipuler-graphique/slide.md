---
layout: StaticCodeExampleLayout
kicker: Excel
title: Manipuler un graphique
caption: Un graphique Excel est aussi un objet que la macro peut cibler.
slide_info: false
---

```vb
Sub UpdateChart()
    Dim chartObject As ChartObject

    Set chartObject = Worksheets("Report").ChartObjects("Chart 1")

    chartObject.Chart.ChartTitle.Text = "Ventes par région"
    chartObject.Chart.SetSourceData _
        Source:=Worksheets("Report").Range("A1:B5")
End Sub
```

::note::

- `ChartObject` est le conteneur du graphique sur la feuille.
- `.Chart` donne accès au graphique lui-même.
- On peut modifier le titre, la source, le type ou les séries.
- Comme pour un TCD, le plus simple est souvent de préparer le graphique à la main puis de l'actualiser.

<!--
Mémo :

Un graphique placé sur une feuille est généralement manipulé en deux étapes :

```text
Worksheet
└── ChartObjects("Chart 1")
    └── Chart
```

`ChartObject` est le conteneur posé sur la feuille. Sa propriété `.Chart` donne accès au graphique lui-même : titre, source, séries, type de graphique.

Comme pour les TCD, une stratégie simple consiste souvent à préparer le graphique à la main, puis à automatiser son actualisation.
-->
