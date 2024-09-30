#!/bin/bash
api=$(curl 'https://zenquotes.io/api/random')
quote=$(echo $api | grep -o '"q":"[^"]*"' | sed 's/"q":"\(.*\)"/\1/')
author=$(echo $api | grep -o '"a":"[^"]*"' | sed 's/"a":"\(.*\)"/\1/')
echo "{\"text\": \"$author\", \"tooltip\": \"$quote\"}"

