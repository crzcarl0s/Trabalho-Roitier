FROM ubuntu
RUN apt-get update && apt-get install -y isc-dhcp-server
COPY dhcpd.conf /etc/dhcp/
CMD ["dhcpd", "-f", "-d"]