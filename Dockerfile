FROM golang:1.17.6-alpine3.15 AS builder

RUN apk add --no-cache bash

WORKDIR /go/src/api

COPY . .

RUN go get -d -v \
  && go install -v \
  && go build

CMD [ "go run ." ]