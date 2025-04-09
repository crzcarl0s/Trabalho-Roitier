#!/bin/bash

cat <<EOF > /container/service/slapd/assets/config/bootstrap/ldif/custom/base.ldif
dn: ou=usuarios,dc=exemplo,dc=local
objectClass: organizationalUnit
ou: usuarios

dn: uid=joao,ou=usuarios,dc=exemplo,dc=local
objectClass: inetOrgPerson
cn: João Silva
sn: Silva
uid: joao
mail: joao@exemplo.local
userPassword: senha123
EOF
