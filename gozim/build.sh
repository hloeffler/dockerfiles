#!/bin/sh
docker build -t gozimtest .
mkdir zim
cd zim
wget http://download.kiwix.org/zim/wikiquote/wikiquote_de_all_nopic_2016-11.zim
