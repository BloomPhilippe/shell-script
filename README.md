# new_projet.bat

Ce script va générer un nouveau répertoire avec un fichier virtual host et modifier votre fichier hosts

## Step 1 : Parametrer Apache afin que les virtuals hosts soit dynamique

Dans C:\wamp64\bin\apache\apache2.4.17\conf\httpd.conf

Ajouter :

```
# Virtual hosts
Include conf/extra/httpd-vhosts.conf
IncludeOptional C:/wamp64/www/*/*.conf
```

## Step 2 : Ouvrir le terminal en tant qu'admin

## Step 3 : Executer le script

Dans C:\wamp64\www

```
sh new_project.bat
```

