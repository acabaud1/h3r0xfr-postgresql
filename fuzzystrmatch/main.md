*Soutenance du jeudi 7 juin 2018*

## Qu'est-ce que fuzzystrmatch ?

Le module fuzzystrmatch fournit plusieurs fonctions pour déterminer les similarités et la distance entre les chaînes de caractères.

Pour activer le module, il faut utiliser la commande `CREATE EXTENSION fuzzystrmatch`.

## Les fonctions

* **Soundex** : méthode de mise en correspondance des noms à consonance similaire en les convertissant au même code. Il a été initialement utilisé par le recensement des États-Unis en 1880, 1900 et 1910. Il n'est pas très efficace pour les noms non-anglais.
* **Levenshtein** : calcule la **distance de Levenshtein** entre deux chaînes.
* **Metaphone** : comme Soundex, est basé sur l'idée de construire un code représentatif pour une comparer les chaînes. Deux chaînes sont alors considérées comme similaires si elles ont les mêmes codes.
* **Double Metaphone** : compare deux chaînes similaires pour une chaîne d'entrée donnée: "primary" et "alternate". Dans la plupart des cas, ils sont les mêmes, mais pour les noms non-anglais en particulier, ils peuvent être un peu différents, en fonction de la prononciation.

## La distance de Levenshtein

La distance de Levenshtein est une distance, au sens mathématique du terme, donnant une mesure de la différence entre deux chaînes de caractères. **Elle est égale au nombre minimal de caractères qu'il faut supprimer, insérer ou remplacer pour passer d’une chaîne à l’autre.**
*Source: Wikipédia*

## Soundex

On a la table `students` suivante :

![Table student](https://github.com/h3r0xfr/h3r0xfr-postgresql/blob/master/fuzzystrmatch/students.png?raw=true)

Si on exécute la requête suivante : `SELECT firstname, difference('Ma', firstname) FROM students ORDER BY student_id`

On obtiendra les résultats suivants :
```sql
firstname | difference
-----------+------------
Mathilde  |          1
Merlin    |          1
Fabien    |          1
Olympia   |          0
Maurelle  |          2
(5 rows)
```

## Levenshtein

## Metaphone

## Double Metaphone
