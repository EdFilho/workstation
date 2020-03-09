#!/bin/bash

# ----------------------------- VARIÁVEIS ----------------------------- #
PPA_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_GRAPHICS_DRIVERS="ppa:graphics-drivers/ppa"

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update &&

## Instalando pacotes e programas do repositório deb do Ubuntu (Mint) ##

sudo apt install python3 python-pip conda wine git build-essential flatpak gnome-software-plugin-flatpak -y nodejs &&

## Instalando pacotes do Snap ##

sudo snap install skype --classic &&  
sudo snap install code &&  
sudo snap install --edge node --classic && 
sudo snap install spotify &&
sudo snap install ubuntu-make &&

## Softwares que precisam de download externo ##

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb && wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&

##GIMP e PhotoGIMP
flatpak install flathub org.gimp.GIMP -y && wget -c https://doc-0s-1g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0v83rmt4mij9897co9ufvor2r1jcj1am/1567965600000/07452089978596344616/*/12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && unzip 12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && cd "PHOTOGIMP V2018 - DIOLINUX" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ &&

## Atualização do sistema ##

# ----------------------------- PÓS-INSTALAÇÕES ----------------------------- #

## Finalização, atualização e limpeza##

sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y

# ---------------------------------------------------------------------- #

echo "Finalizado"
