# Exercice VBA - Exporter les résultats d'un filtre

Objectif : écrire une macro qui agit uniquement sur les cellules encore visibles après un filtre Excel.

## Données

Importer ou copier `opportunites.csv` dans Excel.

Dans Excel :

1. filtrer la table par région, statut, commercial ou catégorie ;
2. sélectionner les cellules de la colonne `Client` encore visibles, sans l'en-tête ;
3. lancer la macro `ExportVisibleSelection`.

## Travail attendu

Créer une macro `ExportVisibleSelection` qui :

1. vérifie que la sélection est une plage Excel ;
2. récupère uniquement les cellules visibles avec `SpecialCells(xlCellTypeVisible)` ;
3. vide l'ancienne liste d'export ;
4. copie les valeurs visibles dans `Export!A2:A...`.

Bonus : ajouter la date d'export en `Export!B1`.
