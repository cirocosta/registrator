FROM alpine:3.5

RUN set -x \
    && apk --update add --virtual build-deps build-base go git

COPY . /go/src/github.com/gliderlabs/registrator

RUN set -x \
    && cd /go/src/github.com/gliderlabs/registrator \
    && export GOPATH=/go CGO_ENABLED=0 GOOS=linux \
    && go get -v \
    && go build -v -ldflags "-X main.Version=$(cat VERSION)" -o /bin/registrator

RUN set -x \
    && rm -rf /go \
    && apk del build-deps

ENTRYPOINT ["/bin/registrator"]
