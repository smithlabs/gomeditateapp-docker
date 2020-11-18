# Build a multi-stage Docker container
# Quicker build, smaller container size, faster downloads to production!
# Ref: https://docs.docker.com/develop/develop-images/multistage-build/

FROM golang:latest
WORKDIR /app
ADD main.go /app/
ADD static/ /app/static/
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# This ready-to-use container image can be found on DockerHub
# https://hub.docker.com/repository/docker/smithlabs/gomeditateapp
# SIZE: 19.69 MB

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /app
COPY --from=0 /app/main .
COPY --from=0 /app/static ./static/
CMD ["./main"]
EXPOSE 8080
