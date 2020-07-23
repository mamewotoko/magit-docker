#! /bin/bash
SERVICE=magit
# SERVICE=magit-slim

LINES="$(stty size | awk '{print $1}')" COLUMNS="$(stty size | awk '{print $2}')" docker-compose run $SERVICE
