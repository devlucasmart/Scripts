#!/bin/bash

rsync -rav --bwlimit=50000 /usr/lib/jvm/jdk-11.0.16_linux-x64_bin.tar.gz root@10.1.0.19:/tmp


#script para copiar dados entre servidores rsync
#bwlimit para definir o tamanho da banda utilizada em KBPS
#pega os acessos das maquinas quando realizar essa tarefa
#dar permissão de execução para o script
#entrar na maquina de destino para executar o script
#executar o script



