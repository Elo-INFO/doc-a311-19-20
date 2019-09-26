## Exercice 3 : appels systèmes

Commentez l'affichage produit par l'exécution de la commande `strace` sur l'exécutable `echoargenv` (voir diapos 16).

```bash
$ strace ./echoargenv PATH TOTO
execve("./echoargenv", ["./echoargenv", "PATH", "TOTO"], 0x7fffc42cdf90 /* 72 vars */) = 0
```

Un processus est crée par l'appel système execve que l'on étudiera et utilisera prochainement.

Ensuite, on observe que les `printf ` du programme C sont en fait traduit en appels systèmes `write`

```bash

write(1, "argument 1: PATH\n", 17argument 1: PATH
)      = 17
write(1, "\n", 1
)                       = 1
write(1, "/home/msyska/gems/bin:/home/msys"..., 238/home/msyska/gems/bin:/home/msyska/texlive/2018/bin/x86_64-linux:/home/msyska/anaconda3/bin:/home/msyska/nodejs/bin:/home/msyska/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

) = 238
write(1, "argument 2: TOTO\n", 17argument 2: TOTO
)      = 17
write(1, "\n", 1
)                       = 1
write(1, "(null)\n\n", 8(null)

)               = 8
exit_group(0)                           = ?
+++ exited with 0 +++

```

