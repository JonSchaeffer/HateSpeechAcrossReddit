#!/usr/bin/env bash
for i in sorted*.json; do
	name=$(echo "$i" | cut -f 1 -d '.')
	split -C 1G --numeric-suffixes $i $name
done
