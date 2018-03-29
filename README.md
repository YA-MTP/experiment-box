# Experiment-box
Caisson d'expérimentation à atmosphère contrôlée

## Description 
Le caisson d'expérimentation à atmosphère contrôlée aura pour but la recherche scientifique de la transmission de virus par hydratation par les racines de plantes. Le virus est porté par des êtres vivants dans l'eau à une température variant entre *5°C* et *15°C* : **le caisson sera donc isotherme**.  
L'intérieur sera équipé d'un **premier bac contenant le liquide** et les êtres infectés, d'un **second bac** placé au-dessus du premier **avec les plantes d'expérimentations en tubes**, d'une surverse pour maintenir le niveau du liquide dans le bac supérieur.  
Un **Raspberry Pi** gérera la partie électronique du caisson qui est composée : d'une **pompe hydraulique** pour faire passer le liquide d'un bac à l'autre, de **modules Peltier** placés sous le premier bac pour changer la température, d'un **capteur thermique** pour vérifier la température, d'ampoules **LEDs** pour l'éclairage des plantes, d'un **module caméra raspberry pi** pour voir l'intérieur du caisson sans avoir à l'ouvrir.
___

## Utilisation des scripts caméra
### Les scripts
`capture_cam_raspi.sh` : permet la capture d'une image au format JPEG+RAW, celui-ci fait un appel au script `rename_timestamp.sh` pour renommer les images capturées par leurs timestamps.  
`stream_http_raspi.sh` : permet de streammer en Live par le protocol HTTP, **VLC** sera utile pour pouvoir lire le flux vidéo.  
`stream_rtsp_raspi.sh` : même chose que le script utilisant HTTP, la latence est en revenche réduite.  

### Utilisation
Pour cloner le dépôt :

    git clone https://github.com/Yalbc/experiment-box.git

Pour lancer un script (stream RTSP en exemple):

    cd experiment-box/camera/
    bash stream_rtsp_raspi.sh

