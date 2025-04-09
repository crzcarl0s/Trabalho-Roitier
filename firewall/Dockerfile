FROM ubuntu:22.04

RUN apt-get update && apt-get install -y iptables iproute2 net-tools

COPY firewall.sh /firewall.sh
RUN chmod +x /firewall.sh

CMD ["/firewall.sh"]
