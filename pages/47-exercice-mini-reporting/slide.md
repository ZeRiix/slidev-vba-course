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
Mémo :

Cet exercice assemble les blocs vus séparément : importer, nettoyer, transformer, présenter, déclencher.

Les procédures fournies (`ImportReportingCsv`, `ExportReportToPdf`) jouent le rôle de briques techniques. Le travail principal consiste à écrire l'orchestration métier dans `RefreshReport`.

Une bonne lecture du workflow :

1. récupérer les données brutes dans `Data` ;
2. appliquer les règles de transformation ;
3. produire une synthèse lisible dans `Report` ;
4. offrir un bouton comme point d'entrée utilisateur.

La macro finale doit pouvoir être relancée sans nettoyage manuel entre deux essais.
-->
