FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y isc-dhcp-server && \
    mkdir -p /etc/dhcp

COPY dhcpd.conf /etc/dhcp/dhcpd.conf

EXPOSE 67/udp

CMD ["dhcpd", "-f", "-d"]
