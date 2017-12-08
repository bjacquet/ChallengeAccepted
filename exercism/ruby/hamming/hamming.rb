module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute (strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError
    end
    if strand1.length == 0
      return 0
    else
      return strand1.each_char.zip(strand2.each_char).select{ |a, b| a != b }.count
    end
  end
end
