for i in sorted*.json; do
	LINETOTAL="$(wc -l < $i)"
	echo $LINETOTAL
done

