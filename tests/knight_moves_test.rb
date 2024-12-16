require_relative '../knight_moves'
require 'test/unit'

class KnightMovesTest < Test::Unit::TestCase
  def test_move_knight
    expected = [[3, 3], [1, 2], [3, 1], [4, 3]]
    assert_equal( expected, knight_moves( [3, 3], [4, 3]))
  end
end
