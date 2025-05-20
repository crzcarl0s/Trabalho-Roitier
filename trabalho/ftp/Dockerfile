FROM ubuntu
RUN apt-get update && apt-get install -y vsftpd
COPY vsftpd.conf /etc/
CMD ["vsftpd", "/etc/vsftpd.conf"]