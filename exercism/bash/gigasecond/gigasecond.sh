#!/usr/bin/env bash

GIGASECOND=1000000000

function gigasecond (){
    let NEW_DATE=$(date -u -d $1 '+%s')+$GIGASECOND
    if [ $2 ]; then
        let NEW_DATE+=$(date -u -d '1970-01-01 '$2 '+%s')
    fi
    echo $(date -u -d@$NEW_DATE)
}

gigasecond $1 $2
exit 0
