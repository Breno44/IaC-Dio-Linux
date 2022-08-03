#!/bin/bash

echo "Iniciando configuração....."

echo "Criando diretorios....."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criados....."

echo "Criando grupos....."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec

echo "Grupos criados....."

echo "Criando usuarios adm....."

useradd carlos -c "Carlos adm" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e carlos
usermod -G GRP_ADM carlos
useradd maria -c "Maria adm" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e maria
usermod -G GRP_ADM maria
useradd joao -c "Joao adm" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e joao
usermod -G GRP_ADM joao

echo "Usuarios adm criados....." 

echo "Criando usuarios ven....."

useradd debora -c "Debora ven" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e debora
usermod -G GRP_VEN debora
useradd sebastiana -c "Sebastiana ven" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e sebastiana
usermod -G GRP_VEN sebastiana
useradd roberto -c "Roberto ven" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e roberto
usermod -G GRP_VEN roberto

echo "Usuarios ven criados....."

echo "Criando usuarios sec....."

useradd josefina -c "Josefina sec" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e josefina
usermod -G GRP_SEC josefina
useradd amanda -c "Amanda sec" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e amanda
usermod -G GRP_SEC amanda
useradd rogerio -c "Rogerio sec" -m -s /bin/bash -p $(openssl passwd senha123)
passwd -e rogerio
usermod -G GRP_SEC rogerio

echo "Usuarios sec criados....."

echo "Mudando owners....."

chown root /home/carlos
chown root /home/maria
chown root /home/joao

chown root /home/debora
chown root /home/sebastiana
chown root /home/roberto

chown root /home/josefina
chown root /home/amanda
chown root /home/rogerio

echo "Owner supremo adcionado....."

echo "Adicionando permissoes diretorio publico....."

chmod 777 /publica 

echo "Permissoes concedidas....."

echo "Adicionando permissoes grupos....."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissoes concedidas....."

echo "Script finalizado!!"

