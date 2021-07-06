FROM ubuntu:20.04

COPY ubuntu.yaml /ubuntu.yaml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]