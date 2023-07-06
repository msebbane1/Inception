# Inception

Utilisation de Docker et d'image Docker

# Lien Utile: -> github vbachele (Docker & bonus)

https://github.com/vbachele/Inception
-> github llescure (set up vm & docker)

https://github.com/llescure/42_Inception
-> github twagger (set up & bonus)

https://github.com/twagger/inception


# Creation:

-> https://cloudinfrastructureservices.co.uk/how-to-install-and-use-docker-compose-on-debian-11/

# Commandes:

-> https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211624-decouvrez-et-installez-docker-compose

Etapes + explications :

-> https://github.com/jmbcorp999/Inception

-> https://github.com/vbachele/Inception/blob/main/README.md#Docker

-> https://github-com.translate.goog/codesshaman/inception/blob/main/09_DOCKER_WORDPRESS.md?_x_tr_sl=ru&_x_tr_tl=en&_x_tr_hl=fr&_x_tr_pto=wapp



# Avantages/Inconveniants

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

# Dependance

Nginx -> depend de Wordpress, puisqu'un serveur sans fichier ne sert a rien, et que PHP est inclu dans worpress (pour rappel notre configuration du serveur va inclure cet etat de fait !)

Wordpress -> depend de Mariadb, puisque pour installer notre wordpress, il va falloir que PHP fonctionne, la dessus c'est ok puisque notre Docker l'integre, mais va avoir egalement besoin d'une base de donnee ainsi que d'un gestionnaire (MariaDB).

Mariadb -> ne depend pas d'un autre docker

Donc logiquement, nos Dockers vont etre deployes dans l'ordre suivant : MariaDB, Wordpress, puis pour finir Nginx.

# Connection
- ssh root@localhost -p 42

# Instalation Wordpress

https://fr.wordpress.org/support/article/how-to-install-wordpress/

#CLE gihub

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