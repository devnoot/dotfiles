#!/usr/bin/env bash

# Install LSP dependencies
npm i -g vscode-langservers-extracted \
  graphql-language-service-cli \
  emmet-ls \
  dockerfile-language-server-nodejs \
  crosoft/compose-language-service \
  @tailwindcss/language-server \
  svelte-language-server

# Install nice to have npm packages
npm i -g --save-dev typescript prettier eslint

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install system packages
apt update
apt install \
  qutebrowser \
  build-essential -y
