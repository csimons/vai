#!/bin/bash

echo -n "Running trace ... "

mkdir -p sc-debug
Rscript src/bin/sc-debug.R > sc-debug/run.log 2>&1

if [ $? -ne 0 ]
then
    echo "aborting (Rscript completed in error)."
    exit 1
fi

echo "done."
