FROM golang:1.11

USER nobody

RUN mkdir -p  /opt/app-root/src/
WORKDIR  /opt/app-root/src/

COPY .  /opt/app-root/src/
RUN go build

CMD ["./src"]
