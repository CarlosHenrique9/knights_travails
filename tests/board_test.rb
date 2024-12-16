require_relative '../board'
require 'test/unit'

class BoardTest < Test::Unit::TestCase
  def test_add_knight
    board = Board.new
    board.add_knight( 0, 3 )
    assert_equal( 0, board.knight.row )
    assert_equal( 3, board.knight.column )
    assert_equal( board.knight_display, board.positions[0][3])
  end

  def test_move_knight
    board = Board.new
    board.add_knight( 0, 3 )
    board.move_knight( 2, 2 )
    assert_equal( 2, board.knight.row )
    assert_equal( 2, board.knight.column )
    assert_equal( nil, board.positions[0][3] )
    assert_equal( board.knight_display, board.positions[2][2] )
  end
end
