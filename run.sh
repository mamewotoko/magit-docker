#! /bin/bash
#SERVICE=magit
# SERVICE=magit-slim
IMAGE_NAME=magit-docker:slim
USER="$(id -u):$(id -g)"

LINES="$(stty size | awk '{print $1}')" COLUMNS="$(stty size | awk '{print $2}')" docker run -it -u $USER -v "$(git rev-parse --show-toplevel):/gitrepo" -v $HOMR/.ssh:/root/.ssh $IMAGE_NAME
