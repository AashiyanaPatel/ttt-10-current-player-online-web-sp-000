WIN_COMBINATIONS = [
   [0,1,2],
   [3,4,5],
   [6,7,8],
   [0,3,6],
   [1,4,7],
   [2,5,8],
   [0,4,8],
   [6,4,2],
]

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board.count do
  cell != ""
  end
end

def current_player(board)
  if turn_count(board).odd?
    "O"
  else
    "X"
  end
end

def won?(board)
  WIN_COMBINATIONS.each do |combo|
  
  position_1 = combo[0]
  position_2 = combo[1]
  position_3 = combo[2]

  board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"
  board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
  
end
  