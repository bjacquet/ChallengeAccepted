#!/bin/ruby

def sockMerchant(n, ar)
  
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = sockMerchant(n, ar)
puts result;
