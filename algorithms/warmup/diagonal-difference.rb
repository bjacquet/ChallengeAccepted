#!/bin/ruby

n = gets.strip.to_i
m = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    m[a_i] = a_t.split(' ').map(&:to_i)
end

$pd = $sd = 0
def diagonal_sum (line, index)
  $pd = $pd + line.at(index)
  $sd = $sd + line.at(-(index+1))
end

m.map.with_index {|l, i| diagonal_sum(l, i) }

puts ($pd-$sd).abs
