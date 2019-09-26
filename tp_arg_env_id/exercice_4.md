## Exercice 4 : myid

Dans une console (terminal de ligne de commandes), testez la commande bash `id` : quel est le résultat? 

```bash
$ id
uid=1000(msyska) gid=1000(msyska) groups=1000(msyska),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),116(lpadmin),126(sambashare)

```

La commande `id` affiche dans le terminal le numéro d'utilisateur courant (son `uid` dans la terminologie Unix), son numéro de groupe principal (`gid`) et la liste des autres groupes auxquels il appartient.

Comparez ce résultat avec le contenu du fichier `/etc/passwd` (voir aussi `/etc/nsswitch.conf` et  les explications de l’enseignant).

```bash
$ grep msyska /etc/passwd
msyska:x:1000:1000:msyska,,,:/home/msyska:/bin/bash
$ grep msyska /etc/group
adm:x:4:syslog,msyska
cdrom:x:24:msyska
sudo:x:27:msyska
dip:x:30:msyska
plugdev:x:46:msyska
lpadmin:x:116:msyska
msyska:x:1000:
sambashare:x:126:msyska
```

On retrouve les informations données par `id`dans les fichiers `/etc/passwd` (une ligne = un utilisateur du host local) et `/etc/group` (une ligne = un groupe).

Si les comptes utilisateurs sont gérés par un annuaire comme ldap ou nis (on trouve cette information dans `/etc/nsswitch.conf`), alors les informations sont obtenues par une requête faite au serveur qui héberge le service d'annuaire.

