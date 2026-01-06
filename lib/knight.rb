class Knight

  def knight_moves(start, target)
    return [start] if start == target

    visited_positions = []
    queue = [[start]]
    current = []

    until(queue.empty?)
      current = queue.first
      next_moves = possible_moves(queue.first.last)

      next_moves.each do |move|
        next if current.include?(move)
        path = current + [move]
        return path if move == target
        queue << path
      end

      queue.shift
    end

    return [start]
  end

  def possible_moves(position)
    x = position.first
    y = position.last
    moves = []

    # Up 2
    if y + 2 <= 7
      moves << [x + 1, y + 2] if x + 1 <= 7 # Right 1
      moves << [x - 1, y + 2] if x - 1 >= 0 # Left 1
    end

    # Down 2
    if y - 2 >= 0
      moves << [x + 1, y - 2] if x + 1 <= 7 # Right 1
      moves << [x - 1, y - 2] if x - 1 >= 0 # Left 1
    end

    # Right 2
    if x + 2 <= 7
      moves << [x + 2, y + 1] if y + 1 <= 7 # Up 1
      moves << [x + 2, y - 1] if y - 1 >= 0 # Dorn 1
    end

    # Left 2
    if x - 2 >= 0
      moves << [x - 2, y + 1] if y + 1 <= 7 # Up 1
     moves << [x - 2, y - 1] if y - 1 >= 0 # Down 1
    end

    return moves
  end
end
