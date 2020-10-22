@echo off
rem je crée le dossier ImageSysteme
md ImageSysteme
cd ImageSysteme
rem je demande à l'utilisateur dans quel dossier il souhaite stocker les fichiers img syst
set /P fichiers_img="Dans quel dossier souhaitez vous déposer les fichiers constituant l'image systeme?"
md %fichiers_img%
rem je crée un dossier temporaire
md temporaire
cd temporaire
rem je crée un fichier .txt avec date systeme, nom ordi, OS et archi processeur
echo %date% %computername% %os% %processor_architecture% > systeme.txt
rem je crée un fichier .txt avec un rapport des connexions TCIP/IP
netstat -an > reseau.txt
rem je crée un fichier .txt avec un rapport des processus en cours d'execution
tasklist > activiteSysteme.txt
rem je copie les données du dossier temporaire dans le dossier voulu par l'utilisateur
cd..
xcopy /E C:\Users\formation\Desktop\ImageSysteme\temporaire %fichiers_img%
rem je passe les fichiers en lecture seule
cd %fichiers_img%
attrib +R systeme.txt
attrib +R reseau.txt
attrib +R activiteSysteme.txt
rem je supprime le dossier temporaire
cd..
rd /s temporaire
