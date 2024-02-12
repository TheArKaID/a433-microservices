#!/bin/bash
docker build -t ghcr.io/thearkaid/karsajobs-ui:latest .

# Login Github Packages
echo $PAT | docker login ghcr.io -u thearkaid --password-stdin

# Push image ke Github Packages
docker push ghcr.io/thearkaid/karsajobs-ui:latest
