#!/usr/bin/env bash

for i in sorted*; do
	mv $i ${i}.json
done
