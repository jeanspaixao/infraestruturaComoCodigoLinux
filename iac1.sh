#!/bin/bash

echo "excluindo arquivos pré-existentes..."

rm -Rf /adm/
rm -Rf /publico/
rm -Rf /ven/
rm -RF /sec/

userdel -r josefina
userdel -r amanda
userdel -r rogerio
userdel -r debora
userdel -r roberto
userdel -r sebastiana
userdel -r joao
userdel -r carlos
userdel -r maria

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /sec
mkdir /ven

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777/publico

echo "Fim...."
