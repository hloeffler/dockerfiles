#!/bin/sh
docker run --rm -t -i -p 127.0.0.1:8888:8888 -v $PWD/zim:/zim:ro gozimtest /go/src/github.com/hloeffler/gozim/cmd/gozimhttpd/gozimhttpd -path /zim/wikiquote_de_all_nopic_2016-11.zim -port 8888

