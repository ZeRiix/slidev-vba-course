# Exercice VBA - Nettoyer et formater

Objectif : améliorer rapidement la lisibilité d'une feuille Excel avec des appels simples de nettoyage et de formatage.

## Ressource

Importer ou copier `reporting_data.csv` dans Excel.

## Travail attendu

Créer une macro `PrepareReportTable` qui :

1. récupère la zone de données avec `CurrentRegion` ;
2. ajuste automatiquement la largeur des colonnes avec `AutoFit` ;
3. met l'en-tête en gras et lui applique une couleur de fond ;
4. vide les anciennes valeurs de commentaire en colonne `E` avec `ClearContents` ;
5. applique un format monétaire à la colonne `C` avec `NumberFormat`.

Le fichier peut être un `.xlsm` créé par vos soins.
