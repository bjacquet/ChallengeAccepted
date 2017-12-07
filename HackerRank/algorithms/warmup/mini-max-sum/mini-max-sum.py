#!/bin/python3

def min_i_max (numbers):
    total_sum = sum(numbers)
    maximum   = minimum = total_sum - numbers[0]
    for i in numbers[1:]:
        aux = total_sum - i
        maximum = max(maximum, aux)
        minimum = min(minimum, aux)
    return (minimum, maximum)

numbers   = [int(n) for n in input().strip().split(' ')]
min_i_max = min_i_max(numbers)

print(min_i_max[0], min_i_max[1])
