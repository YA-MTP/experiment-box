#!/bin/bash


raspivid -o - -t 8640000 -w 800 -h 600 --hflip -n -a 8 -a "RaspiCam %Y-%m-%d %X" | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://<ip_server>:8080/<nom>}' :demux=h264
