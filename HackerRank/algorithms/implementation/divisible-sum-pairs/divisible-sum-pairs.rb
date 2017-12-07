#!/bin/ruby

# https://www.hackerrank.com/challenges/divisible-sum-pairs/

@cache = {}

def divisibleAux (v, k)
  if v % k == 0
    return 1
  else
    return 0
  end
end


def divisible? (v, k)
  return @cache["#{v}:#{k}"] ||= divisibleAux(v, k)
end


def divisibleSumPairs(n, k, ar)
  count = 0
  ar.each_index { |i|
    for j in ar[i+1..-1]
      count += divisible?(ar[i]+j, k)
    end
  }
  return count
end


n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result;
