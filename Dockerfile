FROM alpine:latest

RUN apk update && apk upgrade && apk add curl

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]