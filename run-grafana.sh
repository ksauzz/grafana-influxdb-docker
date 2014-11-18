#!/bin/bash

BASE_DIR=`pwd`/data

if [ -f .container_ids ]; then
  cat <<EOS
  .container_ids file is found. The containers already have been running.
EOS
  exit 1
fi

set -x

docker run -d -p 8086:8086 -p 8083:8083 -p 2003:2003 \
  -v $BASE_DIR/influxdb:/opt/influxdb/shared/data -i ksauzz/influxdb:grafana > .container_ids
docker run -d -p 8080:8080 \
  -v $BASE_DIR/grafana:/var/log/nginx ksauzz/grafana:1.8.1 >> .container_ids
