#!/bin/sh

source ./psql.sh
source ./targets.sh

TARGETS_LIST=targets.inv

while :
  do echo "Starting retention cycle"
  target_databases=$(get_target_databases $TARGETS_LIST)
  echo "Targeting databases: $target_databases"
  for database in $target_databases;
    do target_tables=$(get_target_tables $TARGETS_LIST $database)
    echo "Clearing tables: $target_tables in db: $database";
  done;
  sleep $RETENTION_FREQUENCY
done