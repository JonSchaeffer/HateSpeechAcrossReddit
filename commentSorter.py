import argparse

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--input", required=True,
    help="Input File")
args = vars(ap.parse_args())

with open(args['input'], "r") as tempFile:
    data = tempFile.read()

input = data.split('\n')

splitInput = [input[x:x+math.ceil(len(input)/33)] for x in range(0, len(input), math.ceil(len(input)/33))]
print(splitInput)
