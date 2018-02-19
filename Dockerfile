FROM alpine:latest
RUN apk --update --no-cache add mosh-server
EXPOSE 60001
ENTRYPOINT ["/usr/bin/mosh-server"]
