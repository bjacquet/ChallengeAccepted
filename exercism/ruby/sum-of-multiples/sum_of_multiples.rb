class SumOfMultiples
  def initialize(*divisors)
    @divisors = divisors
  end

  def to(limit)
    (1..limit - 1)
      .select do |i|
        @divisors.any? { |divisor| i % divisor == 0 }
      end
      .sum
  end
end
