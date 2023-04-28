FROM golang:bullseye

WORKDIR /opt/app

RUN git clone https://github.com/coredns/coredns && cd coredns \
    && git checkout 055b2c31a9cf28321734e5f71613ea080d216cd3

WORKDIR /opt/app/coredns

COPY ./plugin.cfg .

RUN make gen && make

COPY ./Corefile .
COPY ./blocklist.txt .

EXPOSE 8080
EXPOSE 53

ENTRYPOINT [ "/opt/app/coredns/coredns" ]
