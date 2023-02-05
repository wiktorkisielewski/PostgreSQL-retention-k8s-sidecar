#!/bin/sh

source ./psql.sh

TARGETS_LIST=targets.inv

retain

while :
  do timestamp=$(date) 
  echo "Starting retention cycle - $timestamp"
  target_databases=$(get_target_databases $TARGETS_LIST)
  for database in $target_databases;
    do target_tables=$(get_target_tables $TARGETS_LIST $database)
    for table in target_tables;
      do echo "Clearing table: $target_tables in db: $database"
      retain_table $database $table 
      done
  done;
  echo "---"
  sleep $RETENTION_FREQUENCY
done