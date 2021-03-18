class Grains
  @grains_in_square = { 1 => 1 }

  def self.square(number)
    raise ArgumentError unless number.positive?
    raise ArgumentError if number > 64

    # can be solved with `1 << (number - 1)`

    (1..number).each{ |n| self.grains_in_square(n) }
    @grains_in_square[number]
  end

  def self.total
    # can be solved with `(1 << 64) - 1`

    (0..64).reduce{ |sum, n| self.grains_in_square(n) + sum}
  end

  private

  def self.grains_in_square(square_number)
    @grains_in_square[square_number] ||= @grains_in_square[square_number - 1] * 2
  end
end
