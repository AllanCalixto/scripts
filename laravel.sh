#!/bin/bash
## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip wine nautilus-dropbox docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y &&

## Instalando pacotes Snap ##

sudo snap install slack --classic &&  
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install insomnia &&  
sudo snap install spotify &&
sudo snap install wps-office-multilang && 

## Adicionando repositório Flathub ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalando Apps do Flathub ##

sudo flatpak install flathub com.obsproject.Studio -y &&
sudo flatpak install flathub com.sublimetext.three -y &&
sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y &&
 

## Softwares que precisam de download externo ##

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb && wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&

##Softwares alternativos Windows##

##GIMP e PhotoGIMP
flatpak install flathub org.gimp.GIMP -y && wget -c https://doc-0s-1g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0v83rmt4mij9897co9ufvor2r1jcj1am/1567965600000/07452089978596344616/*/12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && unzip 12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && cd "PHOTOGIMP V2018 - DIOLINUX" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ &&

## Wine softwares ###
## wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe

wine instalar-freenfe.exe ;

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"


#Atualizando repositorio
sudo apt update
#Instalar o servidor web Apache2
sudo apt install apache2 -y
#Instalar curl
sudo apt install curl git unzip -y
#Instalar lista de dependencias do php
sudo apt install php7.2 libapache2-mod-php7.2 php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-cli php7.2-zip
#Instalar mysql
sudo apt install mysql-server-5.7 php-mysql php7.2-mysql mysql-client-core-5.7 -y
sudo mysql_secure_installation
#Instalar composer
curl -sS https://getcomposer.org installer | sudo php-- --install-dir=/usr/local/bin --fillename=composer
sudo apt install composer
#configurar composer globalmente
composer global require laravel/installer
#instalando o nodejs
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo rm /var/lib/dpkg/lock
sudo apt install nodejs -y
sudo apt intall redis-server -y
#instalando vscode
sudo snap install --classic code
#instalando sublime
wget -qO - https://download.sublimetext.com.sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
#instalando git
sudo apt-get install git
#remover sublime: sudo apt-get remove sublime-text && sudo apt-get autoremove



echo "by: Allan Calixto"
