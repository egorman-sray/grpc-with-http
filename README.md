# grpc-with-http

This repo demonstrates how to setup a gRPC service with a HTTP gateway, forked from a boilerplate repo https://github.com/johanbrandhorst/grpc-gateway-boilerplate.

## Setup

```
make generate
```

## Running

```
$ go run main.go
```

The HTTP endpoint is served on https://0.0.0.0:10000.

A Swagger UI is served on https://0.0.0.0:11000/.

## Requests

POST:

```
curl -X 'POST' \
  'https://localhost:11000/api/v1/users' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{}'
```

GET: 

```
curl -X 'GET' \
  'https://localhost:11000/api/v1/users' \
  -H 'accept: application/json'
```
