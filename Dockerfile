FROM golang
MAINTAINER  video_server
WORKDIR /go/src/
COPY . .
EXPOSE 80
ENTRYPOINT  ["./streamserver/streamserver"]
