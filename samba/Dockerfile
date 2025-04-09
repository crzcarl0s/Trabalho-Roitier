FROM ubuntu:22.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y samba smbclient ldap-utils && \
    mkdir -p /srv/samba/compartilhado

COPY smb.conf /etc/samba/smb.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 137 138 139 445

CMD ["/entrypoint.sh"]
