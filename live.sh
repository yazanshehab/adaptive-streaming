#!/bin/bash

echo "Content-type: text/html"
echo

/"ffmpeg location"/ffmpeg\
 -stream_loop -1 -re  -i /"your file location" \
 -c:v libx264 -ldash 1 -streaming 1 -frag_type every_frame -tune zerolatency\
 -use_timeline 1\
 -use_template 1\
 -f dash output/vidmanf.mpd
