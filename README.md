# kibana-backup

Script to backup and restore Kibana dashboards. Tested for Kibana 4 only.

## Usage

Generate backup:

    npm install -g elasticdump
    ./kibana-export.sh

Restore from backup:

    ./kibana-import.sh
