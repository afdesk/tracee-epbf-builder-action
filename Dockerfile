FROM alpine:3.14

RUN apk add --no-cache wget

COPY ubuntu.yaml /ubuntu.yaml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]