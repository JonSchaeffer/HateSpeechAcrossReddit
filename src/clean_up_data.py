import json
import argparse

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--input", required=True,
	help="Input File")
ap.add_argument("-o", "--output", required=True,
        help="Output file")
args = vars(ap.parse_args())


with open(args['output'], 'w') as dest_file:
    with open(args['input'], 'r') as source_file:
        for line in source_file:
            element = json.loads(line.strip())
            if 'author_flair_css_class' in element:
                del element['author_flair_css_class']
            if 'created_utc' in element:
                del element['created_utc']
            if 'ups' in element:
                del element['ups']
            if 'link_id' in element:
                del element['link_id']
            if 'stickied' in element:
                del element['stickied']
            if 'subreddit_id' in element:
                del element['subreddit_id']
            if 'gilded' in element:
                del element['gilded']
            if 'retrieved_on' in element:
                del element['retrieved_on']
            if 'distinguished' in element:
                del element['distinguished']
            if 'author_flair_text' in element:
                del element['author_flair_text']
            if 'parent_id' in element:
                del element['parent_id']
            if 'id' in element:
                del element['id']
            dest_file.write(json.dumps(element, indent=2))
