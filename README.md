Image purpose
=============

This image starts a logstash container which will redirect all container logs (from stdout and stderr) to an elasticsearch. This image also adds the container hostname as a field.

How to use this image
=====================

```
docker run -d \
  --hostname logstash
  -e LS_HEAP_SIZE=100m \
  -v /var/lib/docker/containers:/var/lib/docker/containers:ro \
  bjuncosa/logstash:1.0
```

Environment Variables
=====================

You can modify the behaviour of the image with some environment variables:

* LS_HEAP_SIZE: You set up the amount of memory logstash will be using. Default: 500m
* ELASTIC_SEARCH_HOST: Specify which elasticsearch host logstash should send logs to. Default: elasticsearch.service.consul

Modifying logstash configuration
================================

If you need logstash to have a different behaviour, you might mount a volume on /conf with a logstash.conf file in it.
