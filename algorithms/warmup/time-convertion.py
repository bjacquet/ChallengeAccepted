#!/bin/python3

import sys, re


time = input().strip()

if re.search('AM$', time):
    if re.search('^12:', time):
        print ("00" + time[2:-2])
    else:
        print (time[:-2])
else:
    if re.search('^12:', time):
        print (time[:-2])
    else:
        hour = int(time[:2]) + 12
        print (str(hour) + time[2:-2])
