#!/bin/sh

get_target_databases() {
  cat $1 | awk '{print $1}' | tr -d ':'
}

get_target_tables() {
  cat $1 | grep $2 | cut -d " " -f2- | tr -d ',' | awk 'NF{NF-=1};1'
}

get_target_timestamp() {
  cat $1 | grep $2 | awk '{print $NF}' | tr -d []
}