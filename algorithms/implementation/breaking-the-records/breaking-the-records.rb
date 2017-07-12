#!/bin/ruby

# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/


def getRecord(s)
  max = min = s[0]
  breakMax = breakMin = 0
  for score in s[1..-1]
    if score > max
      max = score
      breakMax += 1
    elsif score < min
      min = score
      breakMin += 1
    end
  end
  return [breakMax, breakMin]
end


n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
result = getRecord(s)
print result.join(" ")
