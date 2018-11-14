#!/usr/bin/env bash

for i in parsed*-*.json; do
    echo $i
    python ../multiCoreHateSpeech.py -i $i
    continue
done
