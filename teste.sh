#!/bin/bash

echo "Executar o update do sistema? (y/n)"
read update

if [ $update == 'y' ];then
    sudo apt-get update -y
else
    exit 0
fi

echo $'\nExecutar o upgrade do sistema? (y/n)'
read upgrade

if [ $upgrade == 'y' ];then
    sudo apt-get upgrade -y
else
    exit 0
fi