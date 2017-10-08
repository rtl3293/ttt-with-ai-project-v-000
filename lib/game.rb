require 'pry'

#require_relative '../config/environment.rb'
class Game
	include Players
	attr_accessor :board, :player_1, :player_2
	WIN_COMBINATIONS = [
	[0,1,2], # Top row
  	[3,4,5],
  	[6,7,8],
  	[0,3,6],
  	[1,4,7],
  	[2,5,8],
  	[0,4,8],
  	[2,4,6]# ETC, an array for each win combination
]

	def initialize(player1 = Human.new("X"), player2 = Human.new("O"), board = Board.new)
		@board = board
		#binding.pry
		@player_1 = player1
		@player_2 = player2
	end

	def current_player	
		if @board.turn_count % 2 != 0
			@player_2
		else	
			#binding.pry		
			@player_1
		end
	end

	def over?
		draw = self.draw?
    	won = self.won?
		if draw == true || self.winner == "X" || self.winner == "O"
			true
		else
			false
		end
	end

	def won?
		winner = WIN_COMBINATIONS.each do |combinations|
	        win_index_1 = combinations[0]
	        win_index_2 = combinations[1]
	        win_index_3 = combinations[2]

	        position_1 = @board.cells[win_index_1]
	        position_2 = @board.cells[win_index_2]
	        position_3 = @board.cells[win_index_3]

	        if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
	          return combinations
	        else
	          false
	        end
      	end
      	if winner.is_a?(Array) == false
        	false
      	end
	end

	def draw?
		if !self.won?.is_a?(Array) && @board.full? == true
			true
		else
			false
		end
	end

	def winner
		won = self.won?
		if won.is_a?(Array)
			winner = @board.cells[self.won?[0]]
			winner == "X" ? "X" : "O"
		else
			nil
		end
	end

	def turn
		current_move = self.current_player.move(@board)
		validity = @board.valid_move?(current_move)
		while validity != true
			current_move = self.current_player.move(@board)
			validity = @board.valid_move?(current_move)
		end
		if @player_1.is_a?(Human)
			if board.cells.count(" ") == 7
	  			board.route = current_move.to_i
	  		end
	  	else
	  		if board.cells.count(" ") == 8
	  			board.route = current_move.to_i
	  		end
	  	end
		@board.update(current_move, self.current_player)
		@board.display
	end

	def play
		win_statement = "Congratulations "
		@board.display
		#binding.pry
		while self.over? == false
			self.turn
		end
		if self.won?.is_a?(Array) == true
      		if self.winner == "X"
        		puts win_statement + "X!"
      		elsif self.winner == "O"
        		puts win_statement + "O!"
      		end
    	else
     		puts "Cat's Game!"
    	end
	end


end