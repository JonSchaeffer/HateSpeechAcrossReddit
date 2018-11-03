#!/usr/bin/env bash

for i in *-*.json; do
    cat $i | jq 'if .body == "[deleted]" then del(.body, .author, .controversiality, .edited, .subreddit, .score) else . end' > remDelCom$i
    cat remDelCom$i | jq 'select(length > 0)' > parsed$i
    rm -rf remDelCom$i
done

