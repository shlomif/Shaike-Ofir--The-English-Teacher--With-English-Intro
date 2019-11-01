#!/bin/bash
rm -f Shaikeh-Ophir--The-English-Teacher--With-English-Intro.webm
ffmpeg -loop 1 -i small.webp -i Shaikeh-Ophir--The-English-Teacher--With-English-Intro.wav -acodec vorbis -shortest -q:v 5 -s 640x480 Shaikeh-Ophir--The-English-Teacher--With-English-Intro.webm
