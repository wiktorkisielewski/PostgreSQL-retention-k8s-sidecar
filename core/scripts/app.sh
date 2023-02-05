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
    if [[ target_tables == "*" ]];
      then target_tables=$(get_table_names $database);
    fi
    for table in $target_tables;
      do echo "Clearing table: $target_tables in db: $database"
      echo "retain_table $database $table"
      done
  done;
  echo "---"
  sleep $RETENTION_FREQUENCY
done