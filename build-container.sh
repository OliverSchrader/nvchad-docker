#!/bin/bash

docker stop oschrader-nvchad;

docker rm -f oschrader-nvchad;

docker rmi -f oschrader/nvchad;

docker build -t oschrader/nvchad .;

docker run -v "E:\Dev:/root/dev" \
            --name oschrader-nvchad \
            --restart=unless-stopped \
            -it -t oschrader/nvchad;
