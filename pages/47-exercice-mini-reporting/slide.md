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
- surligner les lignes `À relancer` dans `Data`
- lancer le traitement avec un bouton Excel
- bonus : exporter `Report` en PDF

</div>

<div class="course-expected-result">

Blocs fournis :

```vb
Function ImportReportingCsv() As Boolean
    ' fourni dans helpers.bas
End Function

Sub ExportReportToPdf()
    ' fourni dans helpers.bas
End Sub
```

À construire :

- l'enchaînement des étapes
- les totaux `Finance`, `RH`, `IT`
- le tableau `Service` / `Total`
- la mise en forme de `Data` et `Report`

Résultat attendu :

```text
Finance  2050
RH       2900
IT       4080
```

</div>

</div>

<!--
Mémo :

Cet exercice assemble les blocs vus séparément : importer, nettoyer, transformer, présenter, déclencher.

`ImportReportingCsv` et `ExportReportToPdf` isolent des blocs techniques longs. `RefreshReport` peut alors rester centré sur le workflow métier.

`ImportReportingCsv` demande maintenant à l'utilisateur de choisir le CSV avec `GetOpenFilename`. Si l'utilisateur annule, le helper renvoie `False`.

Pour cet exercice, les services connus sont `Finance`, `RH` et `IT`. Des variables `Currency` et des conditions suffisent.

Une bonne lecture du workflow :

1. récupérer les données brutes dans `Data` ;
2. appliquer les règles de transformation ;
3. produire une synthèse lisible dans `Report` ;
4. offrir un bouton comme point d'entrée utilisateur.

La macro finale doit pouvoir être relancée sans nettoyage manuel entre deux essais.

Documentations utiles :

- `Application.GetOpenFilename`
  https://learn.microsoft.com/fr-fr/office/vba/api/excel.application.getopenfilename
- `Workbooks.OpenText`
  https://learn.microsoft.com/fr-fr/office/vba/api/excel.workbooks.opentext
- `ExportAsFixedFormat`
  https://learn.microsoft.com/fr-fr/office/vba/api/excel.worksheet.exportasfixedformat
-->
