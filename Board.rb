class Board
	attr_accessor :board, :horizontal, :vertical

	def initialize(size)
		unless size.class == String
			raise "Board must be initialized with a String."
		end

		size_arry = size.split(" ")
		@board = []
		@horizontal = size_arry[0].to_i
		@vertical = size_arry[1].to_i

		(@horizontal+1).times { |h| @board << [] }

		(@vertical+1).times do |v|
			(@board.length).times { |i| @board[i] << [] }
		end
	end
end