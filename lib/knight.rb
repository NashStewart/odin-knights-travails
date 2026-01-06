class Knight

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
