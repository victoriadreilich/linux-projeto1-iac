#!/bin/bash

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários...."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários...."
password="Senha12"

useradd carlos -m -s /bin/bash -G GRP_ADM
echo "carlos:$password" | chpasswd
passwd -e carlos
useradd maria -m -s /bin/bash -G GRP_ADM
echo "maria:$password" | chpasswd
passwd -e maria
useradd joao -m -s /bin/bash -G GRP_ADM
echo "joao:$password" | chpasswd
passwd -e joao

useradd debora -m -s /bin/bash -G GRP_VEN
echo "debora:$password" | chpasswd
passwd -e debora
useradd sebastiana -m -s /bin/bash -G GRP_VEN
echo "sebastiana:$password" | chpasswd
passwd -e sebastiana
useradd roberto -m -s /bin/bash -G GRP_VEN
echo "roberto:$password" | chpasswd
passwd -e roberto

useradd josefina -m -s /bin/bash -G GRP_SEC
echo "josefina:$password" | chpasswd
passwd -e josefina
useradd amanda -m -s /bin/bash -G GRP_SEC
echo "amanda:$password" | chpasswd
passwd -e amanda
useradd rogerio -m -s /bin/bash -G GRP_SEC
echo "rogerio:$password" | chpasswd
passwd -e rogerio

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."



