FROM alpine:3.10

COPY BuildAndRun.sh /BuildAndRun.sh

ENTRYPOINT ["/BuildAndRun.sh"]
