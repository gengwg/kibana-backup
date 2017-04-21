#!/bin/bash

ES_URL=http://example.com:9200
BACKUP=backup/kibana-exported.json

elasticdump --input=$BACKUP --output=$BACKUP/.kibana --type=data 
