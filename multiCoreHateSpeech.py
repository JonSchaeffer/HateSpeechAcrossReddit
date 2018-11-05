import datetime as dt
from multiprocessing import Process, current_process
import sys

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

def f(name, input):
    #print('{}: hello {} from {}'.format(
     #   dt.datetime.now(), name, current_process().name))
    #sys.stdout.flush()

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


if __name__ == '__main__':
    worker_count = 8
    worker_pool = []
    for _ in range(worker_count):
        p = Process(target=f, args=('bob', input))
        p.start()
        worker_pool.append(p)
    for p in worker_pool:
        p.join()  # Wait for all of the workers to finish.

    # Allow time to view results before program terminates.
    #a = input("Finished")  # raw_input(...) in Python 2.
