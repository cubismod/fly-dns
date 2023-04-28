FROM golang:bullseye

WORKDIR /opt/app

RUN git clone https://github.com/coredns/coredns && cd coredns \
    && git checkout 1b95a6042da112c52b859f9b0d18b41772d0143f

WORKDIR /opt/app/coredns

COPY ./plugin.cfg .

RUN make gen && make

COPY ./Corefile .
COPY ./blocklist.txt .

EXPOSE 8080
EXPOSE 53

ENTRYPOINT [ "/opt/app/coredns/coredns" ]
