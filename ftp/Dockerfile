FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y vsftpd && \
    mkdir -p /home/ftpuser/ftp/files && \
    chmod 755 /home/ftpuser/ftp && \
    useradd -m ftpuser && \
    echo "ftpuser:senha123" | chpasswd

COPY vsftpd.conf /etc/vsftpd.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 21

CMD ["/entrypoint.sh"]
