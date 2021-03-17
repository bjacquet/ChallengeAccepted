class TwelveDays
  PRESENTS = {
    1 => "a Partridge in a Pear Tree",
    2 => "two Turtle Doves",
    3 => "three French Hens",
    4 => "four Calling Birds",
    5 => "five Gold Rings",
    6 => "six Geese-a-Laying",
    7 => "seven Swans-a-Swimming",
    8 => "eight Maids-a-Milking",
    9 => "nine Ladies Dancing",
    10 => "ten Lords-a-Leaping",
    11 => "eleven Pipers Piping",
    12 => "twelve Drummers Drumming",
  }.freeze

  DAYS = {
    1 => "first",
    2 => "second",
    3 => "third",
    4 => "fourth",
    5 => "fifth",
    6 => "sixth",
    7 => "seventh",
    8 => "eighth",
    9 => "ninth",
    10 => "tenth",
    11 => "eleventh",
    12 => "twelfth",
  }.freeze

  def self.song
    [
      self.verses.join("\n\n"),
      "\n"
    ].join
  end

  private

  def self.verses
    1.upto(12).map do |day_number|
      self.verse(day_number)
    end
  end

  def self.verse(verse_number)
    "On the #{day_of_sequence(verse_number)} day of Christmas my true love gave to me: #{present_descriptions(verse_number)}."
  end

  def self.day_of_sequence(number)
    TwelveDays::DAYS[number]
  end

  def self.present_descriptions(amount)
    case amount
    when 1
      TwelveDays::PRESENTS[amount]
    when 2
      TwelveDays::PRESENTS[amount] + ", and " + self.present_descriptions(amount - 1)
    else
      TwelveDays::PRESENTS[amount] + ", " + self.present_descriptions(amount - 1)
    end
  end
end
