#!/bin/python3

import sys


def factorOf(a, b):
    return a % b == 0

def getTotalXAux(x, a, b):
    for ai in a:
        if not factorOf(x, ai):
            return False
    for bi in b:
        if not factorOf(bi, x):
            return False
    return x

def getTotalX(a, b):
    between = 0
    for x in range(a[-1], b[0]+1):
        if getTotalXAux(x, a, b):
            between += 1
    return between


n, m = input().strip().split(' ')
n, m = [int(n), int(m)]
a = list(map(int, input().strip().split(' ')))
b = list(map(int, input().strip().split(' ')))
total = getTotalX(a, b)
print(total)
