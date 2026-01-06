require_relative 'lib/knight'

knight = Knight.new

path = knight.knight_moves([3, 3], [3, 3])
puts("You made it in #{path.size - 1} moves!  Here's your path:")
path.each { |move| pp move }

path = knight.knight_moves([3, 3], [1, 2])
puts("You made it in #{path.size - 1} moves!  Here's your path:")
path.each { |move| pp move }

path = knight.knight_moves([3, 3], [4, 3])
puts("You made it in #{path.size - 1} moves!  Here's your path:")
path.each { |move| pp move }

path = knight.knight_moves([0, 0], [7, 7])
puts("You made it in #{path.size - 1} moves!  Here's your path:")
path.each { |move| pp move }
