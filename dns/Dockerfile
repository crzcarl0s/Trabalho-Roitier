FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y bind9 dnsutils && \
    rm -rf /var/lib/apt/lists/*

COPY named.conf /etc/bind/named.conf
COPY db.exemplo.local /etc/bind/db.exemplo.local
COPY db.192.168.1 /etc/bind/db.192.168.1

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]
