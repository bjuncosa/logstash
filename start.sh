#!/bin/bash

sed -i "s:{{ ELASTIC_SEARCH_HOST }}:${ELASTIC_SEARCH_HOST:-elasticsearch.service.consul}:g" /conf/logstash.conf

logstash -f /conf/logstash.conf
