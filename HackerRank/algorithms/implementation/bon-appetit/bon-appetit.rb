#!/bin/ruby

# https://www.hackerrank.com/challenges/bon-appetit/


def sharedBill(k, ar)
  newAr = []
  if k == 0
    newAr = ar[1..-1]
  elsif k == ar.size
    newAr = ar[0..k-1]
  else
    newAr = ar[0..k-1] + ar[k+1..-1]
  end
  return newAr.inject(:+) / 2
end


def bonAppetit(n, k, b, ar)
  diff = b - sharedBill(k, ar)
  if diff == 0
    return "Bon Appetit"
  else
    return diff.abs
  end
end


n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
b = gets.strip.to_i
result = bonAppetit(n, k, b, ar)
puts result;
