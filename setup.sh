#!/bin/bash

# Atualiza o sistema
sudo apt-get update && sudo apt-get upgrade -y

# Instala dependências necessárias
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg

# Instala Java 21
sudo apt-get install -y openjdk-21-jdk

# Instala Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Adiciona o usuário ubuntu ao grupo docker
sudo usermod -aG docker ubuntu

# Instala Docker Compose (v2 mais recente)
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

# Exibe versões instaladas
java -version
docker --version
docker compose version
