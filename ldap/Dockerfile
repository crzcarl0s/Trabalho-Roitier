FROM osixia/openldap:1.5.0

ENV LDAP_ORGANISATION="Empresa Exemplo"
ENV LDAP_DOMAIN="exemplo.local"
ENV LDAP_ADMIN_PASSWORD=admin123

COPY entrypoint.sh /container/service/slapd/assets/config/bootstrap/ldif/custom/entrypoint.sh
RUN chmod +x /container/service/slapd/assets/config/bootstrap/ldif/custom/entrypoint.sh
