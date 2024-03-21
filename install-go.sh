#!/bin/bash

# Obtener la última versión de Golang
VERSION=$(curl -s https://go.dev/VERSION | grep -o 'go[0-9][0-9.]*')

# Descargar el archivo de instalación
ARCHIVO="${VERSION}.linux-amd64.tar.gz"
wget https://dl.google.com/go/$ARCHIVO

# Extraer el archivo de instalación
sudo tar -C /usr/local -xzf "$ARCHIVO"

# Eliminar el archivo descargado
sudo rm "$ARCHIVO"

# Configurar las variables de entorno
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export PATH=$GOROOT/bin:$PATH' >> ~/.bashrc

# Actualizar el path
source ~/.bashrc

# Verificar la instalación
go version


