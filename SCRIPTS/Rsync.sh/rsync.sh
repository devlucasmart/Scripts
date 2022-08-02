#!/bin/bash

rsync -rav --bwlimit=50000 /GIT/Scripts/SCRIPTS/Rsync lxdf02@192.168.122.82:/home/lxdf02


#script para copiar dados entre servidores rsync
#bwlimit para definir o tamanho da banda utilizada em KBPS
#pega os acessos das maquinas quando realizar essa tarefa
#dar permissão de execução para o script
#entrar na maquina de destino para executar o script
#executar o script



