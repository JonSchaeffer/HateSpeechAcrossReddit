import warnings
warnings.simplefilter("ignore", UserWarning)
warnings.simplefilter("ignore", DeprecationWarning)
warnings.simplefilter("ignore", PendingDeprecationWarning)

def fxn():
    warnings.warn("deprecated", DeprecationWarning)

with warnings.catch_warnings():
    warnings.simplefilter("ignore")
    fxn()

import argparse
import json
import os
from subprocess import call
import subprocess


# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--input", required=True,
	help="Input File")
args = vars(ap.parse_args())

os.system('cat ' + args['input'] + ' | jq .body > temp' + args['input'])

with open("temp" + args['input'], "r") as tempFile:
    data = tempFile.read().strip().replace('\\', '').replace('"', '').replace('\'', '')

os.system("rm -rf temp{}".format(args['input']))

data.strip()
data.replace('\\', '')
data.strip('"')
data.replace('\r', '')
input = data.split('\n')
print(len(input))

from hatesonar import Sonar
sonar = Sonar()

for i in input:
    sonarEval = sonar.ping(i)
    if sonarEval['top_class'] == "neither":
       continue 
    if sonarEval['top_class'] == "hate_speech":
        os.system("cat {} | jq 'select(.body == \"{}\""")' >> hate{}".format(args['input'], i, args['input']))
        continue
    if sonarEval['top_class'] == "offensive_language":
        os.system("cat {} | jq 'select(.body == \"{}\""")' >> offensive{}".format(args['input'], i, args['input']))
        continue

#for i in range(len(input)):
#    print(i)
#    sonarEval = sonar.ping(i)
#    if sonarEval['top_class'] == neither:
#        print("TEST")
