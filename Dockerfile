FROM golang
MAINTAINER  video_server
WORKDIR /go/src/
COPY . .
EXPOSE 80
CMD ["/bin/bash", "/go/src/script/build.sh"]