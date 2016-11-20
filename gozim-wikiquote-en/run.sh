#!/bin/sh
docker build -t quotes . && docker run --rm -t -i -p 127.0.0.1:8888:8888 quotes
