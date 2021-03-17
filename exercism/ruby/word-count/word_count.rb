class Phrase
  def initialize(phrase)
    @phrase = phrase.gsub(/[:,.!&@$%\^]|' | '/, ' ').downcase
  end

  def word_count
    # can be solved with @phrase.split.tally

    @phrase
      .split(' ')
      .group_by(&:itself)
      .transform_values(&:count)
  end
end
