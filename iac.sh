#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Finalizado!"


echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Finalizado!"


echo "Criando usuários do GRP_ADM..."

useradd carlos -s /bin/bash -m -p $(openssl passwd default) -G GRP_ADM
passwd carlos -e 

useradd maria -s /bin/bash -m -p $(openssl passwd default) -G GRP_ADM
passwd maria -e 

useradd joao -s /bin/bash -m -p $(openssl passwd default) -G GRP_ADM
passwd joao -e 

echo "Finalizado!"


echo "Criando usuários do GRP_VEN..."

useradd debora -s /bin/bash -m -p $(openssl passwd default) -G GRP_VEN
passwd debora -e  

useradd sebastiana -s /bin/bash -m -p $(openssl passwd default) -G GRP_VEN
passwd sebastiana -e 

useradd roberto -s /bin/bash -m -p $(openssl passwd default) -G GRP_VEN
passwd roberto -e 

echo "Finalizado!"


echo "Criando usuários do GRP_SEC..."

useradd josefina -s /bin/bash -m -p $(openssl passwd default) -G GRP_SEC
passwd josefina -e  

useradd amanda -s /bin/bash -m -p $(openssl passwd default) -G GRP_SEC
passwd amanda -e 

useradd rogerio -s /bin/bash -m -p $(openssl passwd default) -G GRP_SEC
passwd rogerio -e 

echo "Finalizado!"


echo "Alterando o grupo de cada diretório"

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Finalizado!"


echo "Alterando o permissões de cada diretório"

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Finalizado!"

echo "iac finalizado com sucesso!"
