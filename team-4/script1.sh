#!/usr/bin/env bash
LOG_FILE="$1"
function request_ip() {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        echo 'request ip : ' $ip
    done < $LOG_FILE
}
request_ip
