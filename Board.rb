class Board
	attr_accessor :board

	def initialize(horizontal, vertical)
		@board = []
		horizontal.times do |i|
			@board << []
			vertical.times do
				@board[i] << []
			end
		end
		puts @board = board[0]
	end

	def crush_dictector(position)
		if	@board[position[0]][position[1]] == 0
			puts "Rovers are crushed!" 
		else 
			@board[position[0]][position[1]] = 0
		end
	end
end