#!/bin/bash

for sname in $(cat hosts)
do
cat delete_keys.sh|ssh $sname
done

