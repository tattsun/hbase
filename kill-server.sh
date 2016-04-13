#!/bin/sh

jps | egrep 'HMaster|HRegion' | cut -f1 -d ' ' | xargs kill

while [ -n "$(jps | egrep 'HMaster|HRegion')" ]
do
    echo "Waiting for hbase killed..."
    sleep 1
done
