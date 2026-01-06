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

    # Up
    if y + 2 <= 7
      moves << [x + 1, y + 2] if x + 1 <= 7
      moves << [x - 1, y + 2] if x - 1 >= 0
    end

    # Down
    if y - 2 >= 0
      moves << [x + 1, y - 2] if x + 1 <= 7
      moves << [x - 1, y - 2] if x - 1 >= 0
    end

    # Right
    if x + 2 <= 7
      moves << [x + 2, y + 1] if y + 1 <= 7
      moves << [x + 2, y - 1] if y - 1 >= 0
    end

    # Left
    if x - 2 >= 0
      moves << [x - 2, y + 1] if y + 1 <= 7
      moves << [x - 2, y - 1] if y - 1 >= 0
    end

    return moves
  end
end
