class Knight
  attr_accessor :row, :column, :possible_moves

  def initialize( row, column )
    @row = row
    @column = column
    @move_pattern = [[-2, -1], [-2, 1], [2, -1], [2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2]]
    @possible_moves = find_possible_moves
  end

  def find_possible_moves
    result = []
    @move_pattern.each do |option|
      row = @row + option[0]
      column = @column + option[1]
      if ( row in 0..7 ) && ( column in 0.7 )
        result.push( [row, column] )
      end
    end
    result
  end
end
