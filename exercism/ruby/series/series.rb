class Series
  def initialize(string)
    @series = string.chars
  end

  def slices(size)
    raise ArgumentError if size > @series.size

    @series.each_cons(size).map(&:join)
  end
end
