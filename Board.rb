class Board
	attr_accessor :board

	def initialize(horizontal, vertical)
		@board = []
		horizontal.times do |i|
			@board << []
			vertical.times do
				@board[i] << nil
			end
		end
	end

	def place_rover(rover)
		puts "Rovers are crushed!" if @board[rover.position[0]][rover.position[1]]
		@board[rover.position[0]][rover.position[1]] = rover
	end

	def remove_rover(rover)
		@board[rover.position[0]][rover.position[1]] = nil
	end
end