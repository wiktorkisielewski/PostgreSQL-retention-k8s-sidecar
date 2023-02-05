#!/bin/sh

source ./targets.sh

get_table_names() {
  psql -U $PGUSER -h $PGHOST -d $1 -c "SELECT tablename FROM pg_catalog.pg_tables WHERE tableowner='$PGUSER';" | tail -n +3 | head -n -2
}

retain_table() {
  the_timestamp=$(get_target_timestamp $2)
  psql -U $PGUSER -h $PGHOST -d $1 -c "delete from '$2' where $the_timestamp < now() - interval '$RETENTION_TIME seconds'"
}