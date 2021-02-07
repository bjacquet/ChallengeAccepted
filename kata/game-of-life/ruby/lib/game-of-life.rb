#!/usr/bin/ruby

# Game Of Life

def create_board(rows, columns)
  Array.new(rows, Array.new(columns, 0))
end

def set_initial_state(board)
  board.map do |row|
    row.map { |_cell| [0, 1].sample }
  end
end

def next_generation(board)
  next_generation = board.map(&:dup)

  board.each_with_index do |row, row_idx|
    row.each_with_index do |cell, column_idx|
      neighbors_coordinates = [
        [row_idx - 1, column_idx - 1],
        [row_idx - 1, column_idx    ],
        [row_idx - 1, column_idx + 1],
        [row_idx    , column_idx - 1],
        [row_idx    , column_idx + 1],
        [row_idx + 1, column_idx - 1],
        [row_idx + 1, column_idx    ],
        [row_idx + 1, column_idx + 1],
      ].reject do |coordinates|
        coordinates.any?(&:negative?) ||
          coordinates[0] >= board.length ||
          coordinates[1] >= row.length
      end

      neighbors = neighbors_coordinates
        .map { |coordinates| board[coordinates[0]][coordinates[1]] }
        .sum

      next_generation[row_idx][column_idx] =
        case neighbors
        when 4..8; 0
        when 3   ; 1
        when 0..1; 0
        else board[row_idx][column_idx]
        end
    end
  end

  next_generation
end

def print_board(board)
  100.times { puts  '' }
  puts '-' * (board.length + 2)
  board.map do |row|
    puts "|" +
      row.map { |cell| cell.zero? ? '.' : '*' }.join('') +
      "|"
  end
  puts '-' * (board.length + 2)
end

columns = 25
rows = 25
board = create_board(rows, columns)
board = set_initial_state(board)

while true
  print_board(board)
  next_board = next_generation(board)

  break if next_board == board

  board = next_board
  sleep(0.6)
end
