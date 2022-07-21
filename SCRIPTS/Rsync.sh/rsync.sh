#!/bin/bash

sudo rsync -rav --bwlimit=50000 root@Ip_maquina:/home/user/documentos/upload /home/user/documentos/upload

#script para copiar dados entre servidores rsync
#bwlimit para definir o tamanho da banda utilizada em KBPS
#pega os acessos das maquinas quando realizar essa tarefa
#dar permissão de execução para o script
#entrar na maquina de destino para executar o script
#executar o script



