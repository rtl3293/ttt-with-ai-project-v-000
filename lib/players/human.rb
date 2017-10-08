module Players
  class Human < Player
  	def move(board)
  		puts "Please enter a cell:"
  		input = gets.strip
  		# if board.cells.count(" ") == 7
  		# 	board.route = input.to_i
  		# end
  		input
  	end 		
  end
end