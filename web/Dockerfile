FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y apache2 && \
    mkdir -p /var/www/html

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
