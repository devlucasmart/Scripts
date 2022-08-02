#!/bin/bash

# localiza.sh

# script para localizar arquivos e diretórios
echo "Digite o nome do arquivo: "

read ARQUIVO

X=$(sudo find / -type f -name "$ARQUIVO" )

#
echo "Busca efetuada com sucesso!" ["$X"] || echo "Arquivo não encontrado!"
