#!/bin/python3

import sys

def letter_idx(letter):
  return ord(letter) - 97

def letter_height(letter):
   return h[letter_idx(letter)]

def word_height(word):
   if len(word) == 0:
     return 0
   else:
     return max(letter_height(word[0]), word_height(word[1:]))

def word_area(word):
   return len(word) * word_height(word)

h = list(map(int, input().strip().split(' ')))
word = input().strip()

print(word_area(word))
