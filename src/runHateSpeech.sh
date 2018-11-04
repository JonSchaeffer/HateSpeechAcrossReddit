#!/usr/bin/env bash

for i in parsed*-*.json; do
    echo $i
    python hateSpeech.py -i $i
    continue
done
