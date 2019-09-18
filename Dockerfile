FROM alpine:3.10 as bom-check

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["."]
ENTRYPOINT ["/entrypoint.sh"]
