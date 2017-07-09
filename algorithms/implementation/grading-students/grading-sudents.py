#!/bin/python3

import sys


def samGrade(grade):
    if grade < 38 or grade % 5 <= 2:
        return grade
    else:
        return grade + 5 - grade % 5


def solve(grades):
    return [ samGrade(grade) for grade in grades ]


n = int(input().strip())
grades = []
grades_i = 0
for grades_i in range(n):
   grades_t = int(input().strip())
   grades.append(grades_t)
result = solve(grades)
print ("\n".join(map(str, result)))
