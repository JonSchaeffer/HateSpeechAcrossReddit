for i in RC_*-*; do
	python ../clean_up_data.py -i $i -o $i.json
done
