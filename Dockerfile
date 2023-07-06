FROM alpine:latest

# install nvchad dependencies
RUN apk add wget
RUN apk add nodejs
RUN apk add npm
run apk add ripgrep
RUN apk add build-base

# install neovim
RUN apk add vim
RUN apk add neovim

# install git 
RUN apk add git

# install nvchad
RUN git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# install custom configs
RUN cd /root/.config/nvim/lua/; \
    git clone https://github.com/OliverSchrader/nvchad-config.git custom

RUN mkdir -p /root/dev
