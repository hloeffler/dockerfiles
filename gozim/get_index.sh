#!/bin/sh
mkdir -p index

docker run --rm -t -i -v $PWD/zim:/zim:ro -v $PWD/index:/index gozimtest /go/bin/gozimindex -path /zim/wikiquote_de_all_nopic_2016-11.zim -index /index

