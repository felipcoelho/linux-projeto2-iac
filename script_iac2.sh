#!/bin/bash

echo "atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "instalando o servidor apache"
apt-get install apache2 -y

echo "instalando o unzip"
apt-get install  unzip -y

echo "entrando na pasta temp"
cd /tmp

echo "baixando aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando zip da aplicação"
unzip main.zip

echo "abrindo pasta após descompactação"
cd linux-site-dio-main

echo "copiando arquivos para a pasta de publicação"
cp -r * /var/www/html/

echo "atualização concluida"





