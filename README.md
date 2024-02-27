go-echo
=======

[![Docker Pulls](https://img.shields.io/docker/pulls/klilleby/go-echo.svg)](https://hub.docker.com/r/klilleby/go-echo/)

go-echo is a small HTTP server that echos the request headers and body back at a client as JSON in the response body.

build

```go
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-w -s" .
```

```docker
docker buildx build -t klilleby/go-echo:0.1 -t klilleby/go-echo:latest .
```

```docker
docker run -p 8000:8000 --rm klilleby/go-echo:0.1
```