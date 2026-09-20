# Exercice VBA - Macro sur sélection

Objectif : écrire une macro qui agit uniquement sur la sélection de l'utilisateur.

## Données

Importer ou copier `montants.csv` dans Excel.

Sélectionner ensuite uniquement les cellules de la colonne `Montant`.

## Travail attendu

Créer une macro `ApplyStatusToSelection` qui :

1. vérifie que la sélection est une plage Excel ;
2. parcourt chaque cellule sélectionnée ;
3. écrit le statut dans la cellule à droite ;
4. colore les montants importants ;
5. peut être lancée via un raccourci clavier Excel.
