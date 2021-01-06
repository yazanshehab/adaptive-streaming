#!/bin/bash

/home/gorkem/Documents/ffmpeg/ffmpeg\
 -flags2 +export_mvs -stream_loop -1 -re  -i /home/gorkem/Documents/videos/bun.mp4 \
 -c:v libx264 -ldash 1 -streaming 1 -frag_type every_frame -tune zerolatency\
 -use_timeline 1\
 -use_template 1\
 -seg_duration 4\
 -f dash /home/gorkem/Documents/output/vidmanf.mpd