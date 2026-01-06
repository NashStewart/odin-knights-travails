require_relative 'lib/knight'

knight = Knight.new

pp knight.possible_moves([3, 3])
pp knight.possible_moves([7, 7])
pp knight.possible_moves([1, 1])
