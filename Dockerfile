FROM golang:1.19.0-alpine3.16

RUN apk add --update-cache \
    rsync \
 && rm -rf /var/cache/apk/*

COPY media-sync.sh /

RUN go install github.com/m-manu/rsync-sidekick@latest

ENV PATH="$PATH:$HOME/go/bin"

ENTRYPOINT [ "/media-sync.sh" ]
