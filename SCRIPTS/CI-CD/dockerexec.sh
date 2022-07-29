#!/bin/bash
# Ingressar o Runner em modo docker no GitLab
docker exec -it runner-docker \
gitlab-runner register -n \
  --url https://172.168.1.213/ \
  --registration-token GR13489416ZQBBneb6nRhnf5xxwJa \
  --clone-url https://172.168.1.213\
  --description "Runner Docker"
  --executor docker \
  --docker-image "docker:latest" \
  --docker-privileged
