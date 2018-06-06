## Qu'est-ce que fuzzystrmatch ?

Le module fuzzystrmatch fournit plusieurs fonctions pour déterminer les similarités et la distance entre les chaînes de caractères.

## Les fonctions

* **Soundex** : méthode de mise en correspondance des noms à consonance similaire en les convertissant au même code. Il a été initialement utilisé par le recensement des États-Unis en 1880, 1900 et 1910. Il n'est pas très efficace pour les noms non-anglais.
* **Levenshtein** : calcule la distance de Levenshtein entre deux chaînes.
* **Metaphone** : comme Soundex, est basé sur l'idée de construire un code représentatif pour une comparer les chaînes. Deux chaînes sont alors considérées comme similaires si elles ont les mêmes codes.
* **Double Metaphone** : calcule deux chaînes de type "sounds like" pour une chaîne d'entrée donnée: "primary" et "alternate". Dans la plupart des cas, ils sont les mêmes, mais pour les noms non-anglais en particulier, ils peuvent être un peu différents, en fonction de la prononciation.
