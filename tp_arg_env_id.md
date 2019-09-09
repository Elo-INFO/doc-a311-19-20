# Environnement de travail, outils et premiers programmes

### Rendu de TP

Les réponses aux exercices sont à rendre sur votre dépôt github de nom `A311_Prenom_NOM` (https://github.com/uns-iut-info/A311_Prenom_NOM.git), en respectant les consignes suivantes :

- [ ] tous les fichiers sont placés sous le répertoire `TP_ARG_ENV_ID` (en majuscule), vous ne devez pas inclure les exécutables

- [ ] dans le répertoire `TP_ARG_ENV_ID`, vous devez créer un fichier vide (en respectant la typographie et sans accents) : `TP_ARG_ENV_ID_Prenom_NOM`

- [ ] un fichier `README.md` qui décrit votre avancement : exercices terminés, en cours, difficultés éventuelles rencontrées avec le poste de travail, ...

- [ ] si nécessaire, fournir un document texte de nom `exercice_num.md` avec les réponses de l'exercice numéro `num`;

- [ ] les fichiers sources `C`  commentés avec votre nom en en-tête doivent utiliser le codage UTF-8 et respecter les noms de variables de l'énoncé;

- [ ] fournir un fichier `Makefile` qui permet de compiler sans erreur tous les programmes (`make all`) et supprimer les exécutables (`make clean; make mrproper`);

- [ ] chaque programme doit proposer dans la fonction `main()` des tests en mode silencieux (aucune entrée/sortie interactive).



## Exercice 1 : argv et getenv()

Programmez les exemples du cours et testez les.

- `echoargenv.c` (diapositive 22, coté gauche, Unix seulement)

- `echoargenviron.c` (diapositive 24)

- `exemple_environ_2.c` (diapositive 25)

On rappelle que pour compiler un programme C simple en ligne de commande, il suffit de lancer : 

```bash
 $ gcc -std=gnu11 -Wall -o echoargenv echoargenv.c
```

On détaillera les options du compilateur `gcc` dans un prochain exercice.

Pour le premier exemple on doit fournir un script `bash`  `teste_echoargenv.sh` qui lance au moins les exécutions suivantes :

```bash
echoargenv

echoargenv PATH HOME PWD

echoargenv TOTO

export TOTO="mon test de TOTO"

echoargenv TOTO
```



## Exercice 2 : Makefile

En vous inspirant du fichier `Makefile` de la diapositive 27, écrivez le `Makefile` qui permet de compiler les trois exemples précédents (fichier à inclure dans le même répertoire que les sources).

**Avant de passer à la suite, sauvegardez vos fichiers sur le dépôt github.**

Dans ce répertoire, testez les commandes 

```bash
make
touch *
make clean
make all
```



## Exercice 3 : appels systèmes

Commentez l'affichage produit par l'exécution de la commande `strace` sur l'exécutable `echoargenv` (voir diapos 17).



## Exercice 4 : myid

Dans une console (terminal de ligne de commandes), testez la commande bash `id` : quel est le résultat? 

Comparez ce résultat avec le contenu du fichier `/etc/passwd` (voir aussi `/etc/nsswitch.conf` et  les explications de l’enseignant).

Écrivez le programme C `myid.c` qui imite cette commande en utilisant les appels systèmes `getuid()` et `getgid()`. Voir le manuel avec la commande `man`. Pour le nom de l’utilisateur, voir `getpwnam()` et sa famille (*ie* `getpwuid`).