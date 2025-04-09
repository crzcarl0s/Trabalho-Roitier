#!/bin/bash

# Limpa regras existentes
iptables -F

# Política padrão: negar tudo
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Permite conexões já estabelecidas
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Permite ping
iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT

# Permite SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Permite HTTP e HTTPS
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Permite DNS
iptables -A INPUT -p udp --dport 53 -j ACCEPT
iptables -A INPUT -p tcp --dport 53 -j ACCEPT

# Permite DHCP
iptables -A INPUT -p udp --dport 67:68 --sport 67:68 -j ACCEPT

# Permite LDAP
iptables -A INPUT -p tcp --dport 389 -j ACCEPT

# Permite FTP
iptables -A INPUT -p tcp --dport 21 -j ACCEPT

# Permite SAMBA (CIFS)
iptables -A INPUT -p tcp --dport 445 -j ACCEPT

# Permite tráfego interno do Docker
iptables -A INPUT -i lo -j ACCEPT

# Mantém o container vivo
tail -f /dev/null
