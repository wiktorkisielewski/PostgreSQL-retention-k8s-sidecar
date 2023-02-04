#!/bin/sh

get_target_databases() {
  cat $TARGETS_LIST | awk '{print $1}' | tr -d ':'
}

get_target_tables() {
  cat $TARGETS_LIST | grep $1 | cut -d " " -f2- | tr -d ','
}