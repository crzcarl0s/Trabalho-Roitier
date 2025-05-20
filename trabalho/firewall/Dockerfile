FROM alpine
RUN apk add --no-cache iptables bash
COPY regras.sh /regras.sh
CMD ["sh", "/regras.sh"]