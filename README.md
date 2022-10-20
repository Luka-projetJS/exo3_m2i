# exo3_m2i
Exercice sur docker et kubernetes pour m2i

kubernetes:
Je mets l'erreur en image dans le dossier kubernetes, mon pod se lance, mais pour faire une requete sur la base de donnée ça coince.

Ok, j'ai compris mon erreur. Je pensais qu'il fallait créer une image de mariadb, QUI CONTIENT la base de donnée. Je suis parti la dessus car la commande : docker exec -it container_name mysql < /tmp/students.sql -p ne fonctionnait pas (sous toute les formes). Ducoup dans mon pod maria, je pensais qu'elle était déjà présente vu que j'utilisais l'image que j'avais créé, sauf que c'était buggué...

Pour mon docker-compose, j'ai fait en sorte que mon image contienne ma bdd au moment ou je la créer. Je l'ai meme push. C'était pas la consigne, mais la commande pour executer le fichier sql ne marchait pas, donc j'ai du trouver une alternative (c'était chaud (pour moi en tout cas)). 
