#!/bin/bash
echo -e "\n\n"

echo "  _____        __                 _   _           "
echo " |_   _|      / _|               | | (_)          "
echo "   | |  _ __ | |_ ___   __ _  ___| |_ ___   _____ "
echo "   | | | '_ \|  _/ _ \ / _' |/ __| __| \ \ / / _ |"
echo "  _| |_| | | | || (_) | (_| | (__| |_| |\ V /  __/"
echo " |_____|_| |_|_| \___/ \__,_|\___|\__|_| \_/ \___|"
                                                  

echo '                                       versión 3.0'
echo -e "\n"
echo 'Infoactive es un producto de Vinculo S.A.'
echo 'Autor: Fernando Rz'
echo 'Versión 3.0'
echo -e "\n"
read -p 'Desea instalar Infoactive OS  [y/n]: ' answer

if [ "$answer" != 'y' ] && [ "$answer" != 'Y'  ]; then
        echo 'Saliendo del instalador...'
        exit 1
    fi

echo -e "\n"
echo "1- Cambio de contraseña por defecto"
passwd
echo -e "\n\n"
echo "=========================="
echo "   Actualizando sistema   "
echo "=========================="
echo -e "\n\n"
sudo apt-get update
sudo apt-get upgrade -y
echo -e "\n\n"
echo "=========================="
echo "   Instalando NodeJs      "
echo "=========================="
echo -e "\n\n"
wget https://nodejs.org/dist/v14.16.0/node-v14.16.0-linux-armv7l.tar.gz
tar -xzf node-v14.16.0-linux-armv7l.tar.gz
cd node-v14.16.0-linux-armv7l
sudo cp -R * /usr/local/
cd
rm -r node-v14.16.0-linux-armv7l.tar.gz node-v14.16.0-linux-armv7l
echo -e "\n\n"
NODE_VERSION=$(node --version)
NPM_VERSION=$(npm --version)
echo "NodeJs versión: ${NODE_VERSION}"
echo "npm versión: ${NPM_VERSION}"
echo -e "\n\n"
echo "=========================="
echo "      Instalando Git      "
echo "=========================="
sudo apt install git -y
echo -e "\n\n"