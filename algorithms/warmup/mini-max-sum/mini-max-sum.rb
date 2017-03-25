#!/bin/ruby

def min_i_max(numbers)
  maximum = minimum = numbers[0].to_i
  total_sum = numbers[0].to_i
  for n in numbers[1..-1]
    n_i = n.to_i
    total_sum += n_i
    maximum = [maximum, n_i].max
    minimum = [minimum, n_i].min
  end
  return (total_sum - maximum), (total_sum - minimum)
end

numbers   = gets.split(' ')
min_i_max = min_i_max(numbers)

print(min_i_max[0], ' ', min_i_max[1])
