class RunLengthEncoding
  def self.encode(string)
    string.gsub(/(.)\1+/) do |group|
      "#{group.length}#{group[0]}"
    end
  end

  def self.decode(code)
    code
      .scan(/(\d*)([\w\ ])/)
      .map { |number, char| char * [number.to_i, 1].max }
      .join
  end
end
