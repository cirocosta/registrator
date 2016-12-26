NAME=registrator
VERSION=$(shell cat VERSION)
DEV_RUN_OPTS ?= consul:

install:
	go install -v

deps:
	go get -v

build:
	go build -v -o ./registrator

build-linux: 
	CGO_ENABLED=0 GOOS=linux go build -o ./registrator-linux

build-image: build-linux
	docker build -f Dockerfile -t cirocosta/registrator --squash .

.PHONY: build build-linux build-image install deps
