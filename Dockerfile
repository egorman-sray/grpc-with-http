# Build stage
FROM golang AS build-env
ADD . /src/grpc-with-http
ENV CGO_ENABLED=0
RUN cd /src/grpc-with-http && go build -o /app

# Production stage
FROM scratch
COPY --from=build-env /app /

ENTRYPOINT ["/app"]
