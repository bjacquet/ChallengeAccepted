#!/bin/ruby


def not_fast_enough(v1, v2)
  return v1 <= v2
end


def closing_in(x1, x2)
  return x1 <= x2
end


def meet (x1, x2)
  return x1 == x2
end


def kangaroo(x1, v1, x2, v2)
  if not_fast_enough(v1, v2)
    return "NO"
  end
  while closing_in(x1, x2)
    if meet(x1, x2)
      return "YES"
    end
    x1 += v1
    x2 += v2
  end
  return "NO"
end


x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
result = kangaroo(x1, v1, x2, v2)
puts result;
