class Board
	attr_accessor :board, :horizontal, :vertical

	def initialize(size)
		unless size.class == String
			raise "Board must be initialized with a String."
		end

		size_arry = size.split(" ")
		h = size_arry[0].to_i
		v = size_arry[1].to_i
		@board = []
		@horizontal = h+1
		@vertical = v+1

		@horizontal.times { |h| @board << [] }

		@vertical.times do |v|
			(@board.length).times { |i| @board[i] << [] }
		end
	end
end