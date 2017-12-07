#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
sum = arr.inject{|sum, el| sum+el}
print (sum)
