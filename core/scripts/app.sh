#!/bin/sh

source=./psql.sh
source=./targets.sh

TARGETS_LIST=targets.inv

target_databases=$(get_target_databases)

for database in $target_databases;
  do echo $database \
  && target_tables=$(get_target_tables $database) \
  && echo $target_tables;
done