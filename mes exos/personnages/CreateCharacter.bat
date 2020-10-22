@echo off
md personnages
cd personnages
rem j'enregistre dans la variable Nom la saisie de l'utilisateur
set /P Nom="Quel est le nom de ton personnage ?"
rem j'enregistre dans la variable prénom la saisie de l'utilisateur
set /P Prenom="C'est compris. Et quel est ton prenom ?"
echo Woaw %Prenom% %Nom% ! C'est un nom qui impose le respect ! 
md %Prenom%%Nom%
cd %Prenom%%Nom%
rem j'enregistre dans la variable Arme la saisie de l'utilisateur
set /P Arme="Quelle sera ton arme de base pour commencer l'aventure ?"
echo %Arme% ! C'est un excellent choix ! 
rem j'écris l'arme dans le fichier arme.txt
echo %Arme% > arme.txt
set /P Pouvoir="Et ton super pouvoir ?"
rem j'écris le pouvoirdans le fichier pouvoir.txt
echo %Pouvoir% > pouvoir.txt
echo "Nous sommes maintenant prêts pour commencer l'aventure"
pause 