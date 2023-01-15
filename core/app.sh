#!/bin/sh

while :
    do cat targets.yml
    sleep 10
done


get_table_names() {
  psql -U $PGUSER -h $PG_HOST -d bb_icmarkets -c "SELECT tablename FROM pg_catalog.pg_tables WHERE tableowner='$PGUSER';" | tail -n +3 | head -n -2
}