FROM golang
MAINTAINER  video_server
WORKDIR /go/src/
COPY ./bin ./bin
EXPOSE 80
ENTRYPOINT  ["./bin/streamserver"]
