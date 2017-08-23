#!/bin/bash
mkdir -p /config/captures/$(date -d "today" +"%Y")/$(date -d "today" +"%m")/$(date -d "today" +"%d")
ffmpeg -f mjpeg -r 5 -i http://192.168.1.137:8080/video -r 24 -t 10 /config/captures/$(date -d "today" +"%Y")/$(date -d "today" +"%m")/$(date -d "today" +"%d")/$(date -d "today" +"%H%M%S").mp4