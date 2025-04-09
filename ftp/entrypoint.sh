#!/bin/bash

# Garante que o diretório do usuário exista
mkdir -p /home/ftpuser/ftp/files
chown -R ftpuser:ftpuser /home/ftpuser/ftp

# Inicia o serviço FTP
vsftpd /etc/vsftpd.conf
