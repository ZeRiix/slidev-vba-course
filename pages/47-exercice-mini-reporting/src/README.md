# Exercice VBA - Mini-reporting automatisé

Créer une macro `RefreshReport`.

## Ressources

- `reporting_data.csv` : données source.
- `helpers.bas` : blocs fournis pour importer le CSV et exporter le reporting en PDF.
- `starter.bas` : point de départ à compléter.

## Workflow attendu

1. importer `reporting_data.csv` dans `Data` ;
2. préparer et formater la feuille `Data` ;
3. créer une synthèse lisible dans `Report` ;
4. calculer le total par service ;
5. signaler les lignes `À relancer` ;
6. lancer le traitement avec un bouton Excel ;
7. bonus : exporter `Report` en PDF.

## Blocs fournis

```vb
Sub ImportReportingCsv()
    ' fourni dans helpers.bas
End Sub

Sub ExportReportToPdf()
    ' fourni dans helpers.bas
End Sub
```

## À construire

- l'enchaînement des étapes ;
- la manipulation des feuilles ;
- la transformation métier ;
- la mise en forme du résultat.

## Indications

Dans `RefreshReport`, appelez d'abord `ImportReportingCsv`, puis travaillez sur les feuilles `Data` et `Report`.

Les blocs fournis créent les feuilles `Data` et `Report` si elles n'existent pas encore. Vous pouvez donc partir d'un classeur vierge compatible VBA.

La transformation métier attendue consiste à agréger les montants par service et à faire ressortir les lignes dont le statut vaut `À relancer`.

Ajoutez un bouton dans Excel et affectez-lui la macro `RefreshReport`.
