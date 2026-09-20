# Exercice VBA - Table dynamique

Objectif : écrire une macro qui s'adapte au nombre de lignes du tableau.

## Données

Importer ou copier `clients.csv` dans une feuille Excel avec les colonnes :

- Client
- Ville
- Montant
- Payé
- Statut

## Travail attendu

Créer une macro `ClassifyDynamicAmounts` qui :

1. trouve la dernière ligne automatiquement ;
2. parcourt toutes les lignes de données ;
3. lit le montant en colonne `C` ;
4. écrit `Important` en colonne `E` si le montant est supérieur à 1000 ;
5. écrit `Normal` en colonne `E` sinon ;
6. affiche le total des montants en bas de la colonne `C`.
