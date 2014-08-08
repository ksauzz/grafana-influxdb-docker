#/bin/bash

set -x

curl -v -X POST 'http://localhost:8086/db?u=root&p=root' -d '{"name": "grafana"}'
curl -v -X POST 'http://localhost:8086/db/grafana/users?u=root&p=root' -d '{"name": "grafana", "password": "grafana"}'
