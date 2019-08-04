#!/bin/sh
docker run -d -u srtool -p 8000:8000 \
    -v /var/lib/docker/volumes/srt.sqlite:/srtool/srt.sqlite \
    -v srt_data:/srtool/data --name srtool srtool:latest \
    bash -c "./bin/srt start webport=0.0.0.0:8000 && sleep infinity"