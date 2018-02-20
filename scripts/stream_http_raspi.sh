#!/bin/bash

# 640 x 480
# 1080 x 720

raspivid -o - -t 8640000 -w 640 -h 480 --hflip -n -a 8 -a "RaspiCam %Y-%m-%d %X" | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8080}' :demux=h264


#raspivid -o - -t 8640000 -w 640 -h 480 --fps 25 --hflip -n -a 8 -a "RaspiCam %Y-%m-%d %X" | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=<ip_server>:8080}}'
