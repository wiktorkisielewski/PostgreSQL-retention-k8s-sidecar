#!/bin/sh

while :
    do cat targets.inv
    sleep 10
done


get_table_names() {
  psql -U $PGUSER -h $PGHOST -d $1 -c "SELECT tablename FROM pg_catalog.pg_tables WHERE tableowner='$PGUSER';" | tail -n +3 | head -n -2
}