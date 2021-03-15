class Acronym
  def self.abbreviate(sentance)
    sentance
      .split(/[\ \-]/)
      .map { |w| w[0] }
      .join()
      .upcase
  end
end
