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
      return self.computeAux(strand1, strand2)
    end
  end
  
  def self.computeAux(strand1, strand2)
    if strand1 == ''
      return 0
    else
      if strand1[0] == strand2[0]
        return self.computeAux(strand1[1..-1], strand2[1..-1])
      else
        return 1 + self.computeAux(strand1[1..-1], strand2[1..-1])
      end
    end
  end
end
