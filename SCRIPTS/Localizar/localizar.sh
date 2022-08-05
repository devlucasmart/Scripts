#!/bin/bash

# localiza.sh

# script para localizar arquivos e diretórios

echo "Digite o nome do diretório: "

read DIR

echo "Digite o nome do arquivo: "

read ARQUIVO

X=$(find $DIR -name "$ARQUIVO" )

#
[ -n "$X" ] && echo "Busca efetuada com sucesso!" || echo "Arquivo não encontrado!"
