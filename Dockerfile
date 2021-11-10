FROM alpine:latest

RUN apk --update --no-cache add mosh-server

EXPOSE 60001

ADD start.sh /start.sh
RUN chmod a+x /start.sh

ENTRYPOINT ["/start.sh"]
