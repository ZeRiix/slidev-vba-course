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
5. surligner les lignes `À relancer` dans `Data` ;
6. lancer le traitement avec un bouton Excel ;
7. bonus : exporter `Report` en PDF.

## Blocs fournis

```vb
Function ImportReportingCsv() As Boolean
    ' fourni dans helpers.bas
End Function

Sub ExportReportToPdf()
    ' fourni dans helpers.bas
End Sub
```

## À construire

- l'enchaînement des étapes ;
- la manipulation des feuilles ;
- la transformation métier ;
- la mise en forme du résultat.

## Résultat attendu

Dans `Report`, produire un tableau de synthèse avec une colonne `Service` et une colonne `Total`.

Les services connus dans cet exercice sont :

- Finance ;
- RH ;
- IT.

Avec le CSV fourni, les totaux attendus sont :

| Service | Total |
|---|---:|
| Finance | 2050 |
| RH | 2900 |
| IT | 4080 |

Dans `Data`, signaler les lignes dont le statut vaut `À relancer` en appliquant une couleur de fond à toute la ligne de données.

## Indications

Dans `RefreshReport`, appelez d'abord `ImportReportingCsv`, puis travaillez sur les feuilles `Data` et `Report`.

Le bloc d'import demande de choisir le fichier CSV avec une boîte de dialogue. Si vous annulez la sélection, il renvoie `False`.

Les blocs fournis créent les feuilles `Data` et `Report` si elles n'existent pas encore. Vous pouvez donc partir d'un classeur vierge compatible VBA.

La transformation métier attendue consiste à agréger les montants par service et à faire ressortir les lignes dont le statut vaut `À relancer`.

Vous pouvez résoudre l'agrégation avec trois variables `Currency` et des conditions ou un `Select Case`.

Ajoutez un bouton dans Excel et affectez-lui la macro `RefreshReport`.
