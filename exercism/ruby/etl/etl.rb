class ETL
  def self.transform(old_format)
    old_format.reduce({}) do |new_format, (point, letters)|
      points = Array.new(letters.size, point)
      new_format.merge!(letters.map(&:downcase).zip(points).to_h)
    end
  end
end
