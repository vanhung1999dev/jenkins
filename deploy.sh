#!/usr/bin/env bash

#git cd `dirname $BASH_SOURCE`

docker-compose stop
docker-compose rm -f
docker-compose pull
docker-compose up -d

cd - > /dev/null