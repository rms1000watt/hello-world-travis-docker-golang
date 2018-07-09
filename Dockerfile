FROM golang:1.10.3-alpine AS builder
WORKDIR /go/src/github.com/rms1000watt/hello-world-travis-docker-golang
COPY . .
RUN go test ./...
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -a -tags netgo -installsuffix netgo -o bin/server

FROM scratch
COPY --from=builder /go/src/github.com/rms1000watt/hello-world-travis-docker-golang/bin/server /server
ENTRYPOINT [ "/server" ]
