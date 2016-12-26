FROM alpine:3.4

ADD ./registrator-linux /usr/local/bin/registrator

ENTRYPOINT [ "registrator" ]
