#!/bin/bash
# For Kibana 4 only
# Ref: http://air.ghost.io/kibana-4-export-and-import-visualizations-and-dashboards/

ES_URL=http://example.com:9200
BACKUP=backup/kibana-exported.json

mkdir -p $(dirname "$BACKUP")
elasticdump --input=$ES_URL/.kibana --output=$ --type=data \
  --searchBody='{"filter": { "or": [ {"type": {"value": "dashboard"}}, {"type" : {"value":"visualization"}}] }}' \
  > $BACKUP

exit 0

# To back up only visualizations, use below instead
elasticdump \  
    --input=$ES_URL/.kibana \
    --output=$ \
    --type=data \
    --searchBody='{"filter": {"type" : {"value":"visualization"} }}' \
    > kibana-exported-visualizations.json

