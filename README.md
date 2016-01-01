# micmath_2016

Trouve le mot dont le produit des lettres est passé en argument
Ce script a été créé pour le défi de micmath : https://www.youtube.com/watch?v=lrcXq3Bd474

# Utilisation
Pour utiliser ce script, il est nécessaire d'avoir :
* Ruby
* aspell pour le dictionnaire (paquet `aspell-fr` pour le dictionnaire français)

Pour avoir le dictionnaire en format texte : `aspell -d fr dump master > dictionnaire` 

Pour avoir le dictionnaire sans les mots avec apostrophes : `aspell -d fr dump master | grep -v "'" > dictionnaire`

`ruby path/to/script/micmath.rb 2016`

## Licence
GPLv3
