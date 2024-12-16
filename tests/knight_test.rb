require_relative '../knight'
require 'test/unit'

class KnightTest < Test::Unit::TestCase
  def test_find_possible_moves
    knight = Knight.new( 0, 0 )
    expected = [[1, 2], [2, 1]]
    assert_equal( expected, knight.possible_moves )
  end
end
