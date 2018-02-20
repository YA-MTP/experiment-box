#!/bin/bash

#raspistill -o /home/pi/Pictures/capture_raspi/image%04d.jpg
#%04d pour numérotation type image0000.jpg

#jhead -n%Y-%m-%d_%H-%M-%S <img.jpg>
#Changer le nom de l'image par sa date


#Capture et Rename au format YYYY-MM-DD_hh-mm-ss 
#raspistill -r -o /home/pi/Pictures/capture_raspi/capture.jpg -w 3280 -h 2464 -q 100 -a 8 -a "RaspiCam %Y-%m-%d %X"
#jhead -n%Y-%m-%d_%H-%M-%S /home/pi/Pictures/capture_raspi/capture.jpg

#Capture et Rename au format time-stamp
raspistill -r -o /home/pi/Pictures/capture_raspi/capture.jpg -w 3280 -h 2464 -q 100 -a 8 -a "RaspiCam %Y-%m-%d %X"
/home/pi/scripts/./rename_timestamp.sh /home/pi/Pictures/capture_raspi/capture.jpg


#python /home/pi/scripts/ABC.py
#Pour l'envoi dans la base de données
