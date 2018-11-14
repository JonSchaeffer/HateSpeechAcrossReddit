for i in parsed*.json; do
	LINETOTAL="$(wc -l < $i)"
	echo $(( LINETOTAL / 8 )) $i
done

