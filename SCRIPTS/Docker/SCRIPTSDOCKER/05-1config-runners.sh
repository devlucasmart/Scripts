#!/bin/bash

# Ingressar o Runner em modo shell no GitLab
sudo gitlab-runner register -n \
  --url http://172.168.1.213/ \
  --registration-token GR1348941bhT9U69xGm62-aVMR38j \
  --executor shell \
  --description "Runner Shell"
