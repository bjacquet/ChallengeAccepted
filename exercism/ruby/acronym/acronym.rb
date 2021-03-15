class Acronym
  def self.abbreviate(sentance)
    sentance
      .scan(/\w+/)
      .map { |w| w[0] }
      .join
      .upcase
  end
end
