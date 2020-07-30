#! /bin/bash
#SERVICE=magit
# SERVICE=magit-slim
IMAGE_NAME=mamewotoko/magit-docker:slim

LINES="$(stty size | awk '{print $1}')" COLUMNS="$(stty size | awk '{print $2}')" docker run -it -v "$HOME/.ssh:/root/.ssh" -v "$(git rev-parse --show-toplevel):/gitrepo" $IMAGE_NAME
