class ResistorColorDuo
  COLOR_VALUE = {
    "black"  => 0,
    "brown"  => 1,
    "red"    => 2,
    "orange" => 3,
    "yellow" => 4,
    "green"  => 5,
    "blue"   => 6,
    "violet" => 7,
    "grey"   => 8,
    "white"  => 9,
  }.freeze

  def self.value(colors)
    colors
      .take(2)
      .map { |color| COLOR_VALUE[color.downcase] }
      .reduce { |a, b| a * 10 + b }
  end
end
