---
layout: ExerciseLayout
kicker: Exercice synthèse
title: Mini-reporting automatisé
duration: 45 min
durationLabel: durée estimée
slide_info: false
---

<div class="course-exercise-grid">

<div>

Créer une macro `RefreshReport`.

<TheDownload label="Télécharger l'exercice" href="./exercice-mini-reporting.zip" />

Workflow attendu :

- importer `reporting_data.csv` dans `Data`
- préparer et formater la feuille `Data`
- créer une synthèse lisible dans `Report`
- calculer le total par service
- signaler les lignes `À relancer`
- lancer le traitement avec un bouton Excel
- bonus : exporter `Report` en PDF

</div>

<div class="course-expected-result">

Blocs fournis :

```vb
Sub ImportReportingCsv()
    ' fourni dans helpers.bas
End Sub

Sub ExportReportToPdf()
    ' fourni dans helpers.bas
End Sub
```

À construire :

- l'enchaînement des étapes
- la manipulation des feuilles
- la transformation métier
- la mise en forme du résultat

</div>

</div>

<!--
Notes formateur :

Le README reproduit la consigne. L'import CSV et l'export PDF sont fournis pour éviter un exercice de recopie.

Faire vérifier que le bouton déclenche bien RefreshReport depuis Excel, pas depuis le VBE.
-->
