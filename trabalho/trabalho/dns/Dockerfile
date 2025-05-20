FROM ubuntu
RUN apt-get update && apt-get install -y bind9
COPY named.conf /etc/bind/
COPY db.redes /etc/bind/
CMD ["named", "-f"]