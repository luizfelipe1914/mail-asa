#!/bin/bash

case $1 in
    'build')
            docker compose build
            echo -e "Infra construida!"
        ;;
    'up')
        docker compose up -d
        echo -e "Containers UP!"
        ;;
    'down')
        docker compose down 
        echo -e "Containers DOWN!"
        ;;
    'restart')
        docker compose down
        echo -e "Containers DOWN!"
        docker compose up -d --build
        echo -e "Infra reconstruida!"
        echo -e "Containers UP!"
        ;;
esac