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
Notes formateur :

Ne pas créer une section complète sur les graphiques.

Faire le lien avec les objets Excel : feuille > ChartObjects > Chart.
-->
