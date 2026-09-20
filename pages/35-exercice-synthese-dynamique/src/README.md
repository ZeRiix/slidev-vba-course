# Exercice VBA - Table dynamique

Objectif : écrire une macro qui s'adapte au nombre de lignes du tableau.

## Données

Importer ou copier `clients.csv` dans une feuille Excel avec les colonnes :

- Client
- Ville
- Montant
- Payé

Ajouter ensuite une colonne `Statut` à droite.

## Travail attendu

Créer une macro `ClassifyDynamicAmounts` qui :

1. trouve la dernière ligne automatiquement ;
2. parcourt toutes les lignes de données ;
3. écrit `Important` si le montant est supérieur à 1000 ;
4. écrit `Normal` sinon ;
5. affiche un total en bas de la colonne Montant.
