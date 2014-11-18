# Grafana with influxdb on docker.

This influxdb is enabled to listen graphite port on 2003.
So you can aggregate metrics from multiple servers using collectd or something via graphite api.

## Getting started

```
sudo docker pull ksauzz/influxdb:grafana
sudo docker pull ksauzz/grafana:1.8.1
sudo ./run-grafana.sh
./init-db.sh
```

Access http://localhost:8080 using your browser.

## Dockerfiles

see: https://github.com/ksauzz/dockerfiles
