#!/bin/bash

echo "==> Carregando imagem Docker..."
docker load -i teste-cicd.tar

echo "==> Verificando se docker-compose.yml existe..."
if [ ! -f docker-compose.yml ]; then
  echo "Arquivo docker-compose.yml não encontrado no diretório atual!"
  exit 1
fi

echo "==> Parando containers antigos (se houver)..."
docker compose down

echo "==> Subindo containers..."
docker compose up -d --build

echo "==> Deploy concluído."
