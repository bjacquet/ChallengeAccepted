class Matrix
  def initialize(matrix)
    @matrix = matrix
      .split(/\n/)
      .map { |c| c.split.map(&:to_i) }
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end
end
