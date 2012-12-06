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
	end
end