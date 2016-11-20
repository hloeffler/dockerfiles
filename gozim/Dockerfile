FROM golang:wheezy
MAINTAINER Hauke Loeffler <mail@hauke-loeffler.de>

# first 4 for gozim, zip is for rice
RUN apt-get update && apt-get install -y \
    git \
    liblzma-dev \
    mercurial \
    build-essential \
    zip \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN go get -u -v -tags all github.com/blevesearch/bleve/...
RUN go get github.com/GeertJohan/go.rice
RUN go get github.com/GeertJohan/go.rice/rice
RUN go install github.com/GeertJohan/go.rice
RUN go install github.com/GeertJohan/go.rice/rice

RUN go get github.com/hloeffler/gozim
RUN go install github.com/hloeffler/gozim

RUN cd /go/src/github.com/hloeffler/gozim && sed -i \ 's,github.com/akhenakh/gozim,github.com/hloeffler/gozim,'  ./cmd/gozimindex/main.go ./cmd/gozimhttpd/views.go ./cmd/gozimhttpd/main.go

RUN go install github.com/hloeffler/gozim/cmd/gozimhttpd
RUN cd /go/src/github.com/hloeffler/gozim/cmd/gozimhttpd && go build && rice append --exec gozimhttpd

RUN go get github.com/hloeffler/gozim/cmd/gozimindex
RUN go install github.com/hloeffler/gozim/cmd/gozimindex

CMD [ "bash" ]
