require_relative 'board'

def knight_moves(start, stop)
  board = Board.new
  board.add_knight(start[0], start[1])
  queue = [[start, [start]]]
  visited = Array.new(8) { Array.new(8, false) }

  until queue.length == 0
    current, history = queue.shift
    board.move_knight(current[0], current[1])
    visited[current[0]][current[1]] = true
    if current == stop
      visualize(history)
      return history
    end

    board.knight.possible_moves.each do |destination|
      if !visited[destination[0]][destination[1]]
        queue.push([destination, history+[destination]])
      end
    end
  end

end

def visualize(path)
  board = Board.new
  board.add_knight(path[0][0], path[0][1])
  puts 'You can reach your destination in ' + path.length.to_s + ' moves following the path:'
  p path
  path.each do |destination|
    board.move_knight(destination[0], destination[1])
    board.display_board
  end
end


p knight_moves([0,0],[3,3])
