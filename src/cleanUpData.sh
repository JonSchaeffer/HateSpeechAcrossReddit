for i in RC_*-*; do
	cat $i | jq 'if .body == "[deleted]" then del(.body) else . end | .body' >> comments$i.json
	cat comments$i.json | sed '/null/, + 1 d' >> sortedcomments$i.json
	rm -rf $i
	rm -rf comments$i.json
done
