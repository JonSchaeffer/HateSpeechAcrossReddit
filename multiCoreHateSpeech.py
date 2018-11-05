import datetime as dt
from multiprocessing import Process, current_process, Queue, Pool
import random
import time
import sys
import argparse
import json
import os
from subprocess import call
import subprocess
import math

import warnings
warnings.simplefilter("ignore", UserWarning)
warnings.simplefilter("ignore", DeprecationWarning)
warnings.simplefilter("ignore", PendingDeprecationWarning)

def fxn():
    warnings.warn("deprecated", DeprecationWarning)

with warnings.catch_warnings():
    warnings.simplefilter("ignore")
    fxn()


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

splitInput = [input[x:x+math.ceil(len(input)/8)] for x in range(0, len(input), math.ceil(len(input)/8))]
#print(chunks[3])


def f(splitInput, splitInputIndex):
    #print('{}: hello {} from {}'.format(
     #   dt.datetime.now(), name, current_process().name))
    #sys.stdout.flush()

    from hatesonar import Sonar
    sonar = Sonar()

    for i in splitInput[splitInputIndex]:
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

    #mark the start time
    startTime = time.time()
    #create a Queue to share results
    q = Queue()
    #create 4 sub-processes to do the work
    p1 = Process(target=f, args=(splitInput, 0))
    p1.start()
    p2 = Process(target=f, args=(splitInput, 1))
    p2.start()
    p3 = Process(target=f, args=(splitInput, 2))
    p3.start()
    p4 = Process(target=f, args=(splitInput, 3))
    p4.start()
    p5 = Process(target=f, args=(splitInput, 4))
    p5.start()
    p6 = Process(target=f, args=(splitInput, 5))
    p6.start()
    p7 = Process(target=f, args=(splitInput, 6))
    p7.start()
    p8 = Process(target=f, args=(splitInput, 7))
    p8.start()

    p1.join()
    p2.join()
    p3.join()
    p4.join()
                
    #mark the end time
    endTime = time.time()
    #calculate the total time it took to complete the work
    workTime =  endTime - startTime
        
    #print results
    #print "The job took " + str(workTime) + " seconds to complete"
#----------------------------------------------------_#
#    worker_count = 8
#    worker_pool = []
#    for _ in range(worker_count):
#        p = Process(target=f, args=('bob', input))
#        p.start()
#        worker_pool.append(p)
#    for p in worker_pool:
#        p.join()  # Wait for all of the workers to finish.

    # Allow time to view results before program terminates.
    #a = input("Finished")  # raw_input(...) in Python 2.
