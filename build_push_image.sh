#!/bin/bash

# Membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image dengan format Github Packages
docker tag item-app:v1 ghcr.io/thearkaid/item-app:v1

# Login ke Github Packages (token di export PAT env var)
echo $PAT | docker login ghcr.io -u thearkaid --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/thearkaid/item-app:v1
