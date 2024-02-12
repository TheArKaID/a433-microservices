#!/bin/bash
docker build -t ghcr.io/thearkaid/karsajobs:latest .

# Login ke Github Packages (token di export PAT env var)
echo $PAT | docker login ghcr.io -u thearkaid --password-stdin

# Push image ke Github Packages
docker push ghcr.io/thearkaid/karsajobs:latest
