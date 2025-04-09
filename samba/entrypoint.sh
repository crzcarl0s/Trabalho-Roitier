#!/bin/bash

# Cria o usuário joao (deve já existir no LDAP para funcionar com integração real)
adduser --no-create-home --disabled-password --gecos "" joao
(echo senha123; echo senha123) | smbpasswd -a joao

# Inicia o serviço
smbd -F
