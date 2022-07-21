#!/bin/bash

# Ingressar o Runner em modo shell no GitLab
sudo gitlab-runner register -n \
  --url https://172.168.1.213/ \
  --registration-token GR13489416ZQBBneb6nRhnf5xxwJa \
  --executor shell \
  --description "Runner Shell"

# Criar o container gitlab-runner para Docker
docker run -dit \
  --name runner-docker \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /opt/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner:ubuntu-v14.9.1

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

