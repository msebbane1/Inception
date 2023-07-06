# Inception

Utilisation de Docker et d'image Docker

# Creation:

-> https://cloudinfrastructureservices.co.uk/how-to-install-and-use-docker-compose-on-debian-11/

# Lien Utiles :

-> https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211624-decouvrez-et-installez-docker-compose

Etapes + explications :

-> https://github.com/jmbcorp999/Inception

-> https://github.com/vbachele/Inception

-> https://github.com/llescure/42_Inception

-> https://github.com/twagger/inception

-> https://github.com/vbachele/Inception/blob/main/README.md#Docker

-> https://github-com.translate.goog/codesshaman/inception/blob/main/09_DOCKER_WORDPRESS.md?_x_tr_sl=ru&_x_tr_tl=en&_x_tr_hl=fr&_x_tr_pto=wapp


# Connection
- ssh root@localhost -p 42

cp -R /goinfre/msebbane/inception /sgoinfre/students/msebbane

# Instalation Wordpress

https://fr.wordpress.org/support/article/how-to-install-wordpress/

# CLE gihub

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


# Dependance

Nginx -> depend de Wordpress, puisqu'un serveur sans fichier ne sert a rien, et que PHP est inclu dans worpress (pour rappel notre configuration du serveur va inclure cet etat de fait !)

Wordpress -> depend de Mariadb, puisque pour installer notre wordpress, il va falloir que PHP fonctionne, la dessus c'est ok puisque notre Docker l'integre, mais va avoir egalement besoin d'une base de donnee ainsi que d'un gestionnaire (MariaDB).

Mariadb -> ne depend pas d'un autre docker

Donc logiquement, nos Dockers vont etre deployes dans l'ordre suivant : MariaDB, Wordpress, puis pour finir Nginx.



# DOCKER

Docker est une plate-forme qui permet de creer, de deployer et d'exécuter des applications dans des conteneurs.
Les conteneurs sont des environnement logiciel qui vont nous fournir une methode de virtualisation au niveau du stysteme d'exploitation ou plusieurs conteneur peuvent coexister sur une machine physique.
Docker vous permet de séparer vos applications de votre infrastructure afin que vous puissiez livrer rapidement des logiciels.
Docker offre la possibilité de conditionner et d'exécuter une application dans un environnement vaguement isolé appelé conteneur.
Docker a toute les dependances et les biblioteques necessaire a l'application

# DOCKER-COMPOSE

Docker-compose est un outil qui permet de definir et gerer des applications mutli-containeur

# DOCKER IMAGE AVEC DOCKER-COMPOSE

# DOCKER IMAGE SANS DOCKER-COMPOSE

# BENEFICE de DOCKER comparer aux VMs

Les conteneurs Docker sont plus efficaces en termes d'utilisation de ressources par rapport aux vm. Ils permettent d'economiser de la memoire, il se lance plus rapidement. Une VM doit lancer línstaltion complete dún systeme d'exploitation. Un docker est portable tu peux donc utiliser ton docker sur une autre machine sans se soucier des variations de configurations

# DOCKER NETWORK

# IMAGE DOCKER

# NGINX

Nginx est un serveur Web open source qui stocke des fichiers hmtl, js, images et utilise une requête http pour afficher un site Web. 
-> Nginx va nous permettre de configurer notre server grace aux documents de configuration Nginx

# MARIADB

MariaDB est un systeme de gestion de base de donnees open source (Il prend en charge tous les systemes d'exploitations)
-> MariaDB va nous permettre de stocker des informations sur nos utilisateurs et paramètres wordpress.

# WORDPRESS

Wordpress est un systeme de gestion de contenu open source c'est utilise pour la creation et la gestion de sites web et de blogs
-> Wordpress va donc nous permettre de creer notre interface site web




# Avantages/Inconveniants Debian/Alpine

C'est quoi ?

1. debian:buster

  a. Avantages :

   - Stable

   - Integre bash, avec des commandes familieres

   - Pas d'evolution de version possible entre le demarrage du sujet et son rendu

  b. Inconvenients :

   - Plus lent a deployer

   - Pas de gestion native de PHP au dela du 7.3

   - Plus lourd (50 mo)

2. alpine:3.17

  a. Avantages :

   - Deploiement plus rapide (en moyenne 2 fois plus rapide)

   - Plus leger (5 mo)

  b. Inconvenients :

   - Certaines version, lors de mes tests, se sont averees instables sur le gestion de certains process

   - Commande de base legerement differentes de bash


# COMMANDES dockerfiles

# DEAMONS