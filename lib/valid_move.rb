# code your #valid_move? method here
def valid_move?(board, position_str)
  position_plus_one = position_str.to_i
  position = position_plus_one - 1
  if position.between?(0, 8)
    !(position_taken?(board, position))
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position] == "X") || (board[position] == "O")
    true
  end
end