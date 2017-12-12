module BookKeeping
  VERSION = 6
end

class Gigasecond
  def self.from (year)
    return year + 10**9
  end
end
