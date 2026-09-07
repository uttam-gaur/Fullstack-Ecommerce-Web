#!/bin/bash

echo "=========================================="
echo "              SYSTEM UPDATE"
echo "=========================================="

sudo apt update

echo "=========================================="
echo "            INSTALLING DOCKER"
echo "=========================================="

sudo apt install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker

echo "=========================================="
echo "         INSTALLING DOCKER COMPOSE"
echo "=========================================="

sudo apt install -y docker-compose-v2
echo "=========================================="
echo "       VERIFYING DOCKER & COMPOSE"
echo "=========================================="

docker --version
docker compose version

echo "=========================================="
echo "          GRANTING DOCKER PERMISSION"
echo "=========================================="

sudo usermod -aG docker $USER

echo "=========================================="
echo "                 DONE"
echo "=========================================="

echo 'IMPORTANT: Run "newgrp docker" before using Docker without sudo.'
