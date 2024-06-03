#!/bin/bash

echo "Baixando atualizações.............................................................."

if ! sudo apt-get update
then

echo "Não foi possível baixar as atualizações. Verifique seu arquivo /etc/apt/sources.list"
exit 1
fi

echo "Download realizada com sucesso.";sleep 2

echo "Instalando atualizações disponíveis.............................................................."

if ! sudo apt-get upgrade -y
then

echo "Não foi possível atualizar os pacotes disponíveis."
exit 1
fi

echo "Atualização de pacotes realizada com sucesso.";sleep 2

echo "Você deixar instalar drivers proprietários da placa de vídeo? (s/n)"

    VIDEO01=s
    VIDEO02=n

if ["$VIDEO"="s"];then
    sudo ubuntu-drivers install

elif ["$VIDEO"="n"];then
    echo "Instalação ignorada com sucesso";sleep2
    exit
fi