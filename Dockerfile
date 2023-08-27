FROM golang:bullseye

WORKDIR /opt/app

ARG coredns_version=v1.11.1

RUN git clone https://github.com/coredns/coredns && cd coredns \
    && git checkout tags/$coredns_version -b $coredns_version

WORKDIR /opt/app/coredns

COPY ./plugin.cfg .

RUN make gen && make

COPY ./Corefile .
COPY ./blocklist.txt .

EXPOSE 8080
EXPOSE 53

ENTRYPOINT [ "/opt/app/coredns/coredns" ]
