#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

zero = pos = neg = 0
for i in arr
  if i < 0
    neg += 1
  elsif i == 0
    zero += 1
  else
    pos += 1
  end
end

puts pos.fdiv(n)
puts neg.fdiv(n)
puts zero.fdiv(n)
