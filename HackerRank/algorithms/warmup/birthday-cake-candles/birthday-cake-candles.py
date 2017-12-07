#!/bin/python3

import sys


# This recursive solution didn't pass the tests.
# Maybe due to Python's limit on tail recursion.
# 
# def occurrences(el, l):
#     if len(l):
#         if el == l[0]:
#             return 1 + occurrences(el, l[1:])
#         else:
#             return occurrences(el, l[1:])
#     else:
#         return 0
#
#
# def birthdayCakeCandles(n, ar):
#     topHeight = max(ar)
#     return occurrences(topHeight, ar)


def birthdayCakeCandles(n, ar):
    topHeight = ar[0]
    candles = 1
    
    for el in range (1, n):
        if ar[el] > topHeight:
            topHeight = ar[el]
            candles = 1
        elif ar[el] == topHeight:
            candles += 1

    return candles


n = int(input().strip())
ar = list(map(int, input().strip().split(' ')))
result = birthdayCakeCandles(n, ar)
print(result)
