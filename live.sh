#!/bin/bash

/home/yeezy/program/ffmpeg/ffmpeg\
 -stream_loop -1 -re  -i /home/yeezy/bun.mp4 \
 -c:v libx264 -ldash 1 -streaming 1 -frag_type every_frame -tune zerolatency\
 -use_timeline 1\
 -use_template 1\
 -f dash output/vidmanf.mpd
