

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player)
  board[index] = current_player
end

def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
  false : true
end


def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
end
#
# def turn(board)
#   puts "Please enter 1-9:"
#   input = gets.strip
#   index = input_to_index(input)
#   if valid_move?(board, index)
#     move(board, index, current_player)
#     display_board(board)
#   else
#     turn(board)
#   end
# end

# def turn_count(board)
#   turns = 0
#   board.each do |i|
#     if i == "X" || i == "O"
#         turns += 1
#     end
#   end
#   return turns
# end

def turn_count(board)
  turns = 0
  board.each {|i| if i == "X" || i == "O" turns += 1}
    end
  end
  return turns
end

def current_player(board)
  if
