#!/bin/bash

# Criamos um arquivo de execução de scripts para deixar mais
# organizado e claros os comandos linux executados durante o processo
# de scripts da nossa pipeline, dessa forma podemos criar scripts mais 
# elaborados e assim reduzir o tamanho da pipeline.

echo "Executando testes..."

pwd #mostrar o diretório atual

ls # lista os arquivos do diretório

cat /etc/os-release # para ver arquivos com conteudo do tipo text (Versão do OS)

mkdir pipeline # criando um diretório

ls 