FROM ubuntu
RUN apt-get update && apt-get install -y samba
COPY smb.conf /etc/samba/
RUN mkdir -p /srv/samba/publico && chmod -R 777 /srv/samba/publico
CMD ["smbd", "-F"]