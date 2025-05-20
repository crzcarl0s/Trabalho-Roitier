FROM ubuntu
RUN apt-get update && apt-get install -y apache2
RUN echo "<h1>Servidor Web</h1>" > /var/www/html/index.html
CMD ["apache2ctl", "-D", "FOREGROUND"]