#!/bin/bash

TARGET_ES='http://10.123.107.23:9200' 

echo 


for index_name in `cat migration_index_list|grep -v '#'`;
do
    echo "starting delete index ${index_name}"
    /usr/bin/curl -XDELETE $TARGET_ES/${index_name}
    echo "ending delete index ${index_name}"
done

echo
echo
echo "finish delete for all index."
