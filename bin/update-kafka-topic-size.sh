#!/bin/bash

if [ -z $1 ]; then
  echo "Need a max.message.bytes parameter"; exit 1;
fi

TOPICS=$(kafka-topics --zookeeper 10.224.13.172:2181 --list --exclude-internal | grep -v "consumers_offsets")
for i in $TOPICS; do
  kafka-configs --zookeeper 10.224.13.172:2181 --entity-type topics --entity-name $i --alter --add-config max.message.bytes=$1
done
