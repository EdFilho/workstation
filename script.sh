#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Adicionar repositório ##

sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' ;
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' ;

## Atualizando o repositório ##

sudo apt update &&

## suporte a snaps para o mint. Para Ubuntu comentar a linha ##

sudo apt install snapd &&

## Instalando pacotes e programas do repositório deb do Ubuntu (Mint) ##

sudo apt install python3 python-pip dart &&

## Instalando pacotes do Snap ##

sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install pycharm-professional --classic &&
sudo snap install spotify --classic &&
sudo snap install android-studio --classic &&
sudo snap install inkscape &&
sudo snap install gimp --classic &&

## Atualização do sistema ##

# ----------------------------- PÓS-INSTALAÇÕES ----------------------------- #

## Finalização, atualização e limpeza##

sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y

# ---------------------------------------------------------------------- #

echo "Finalizado"
