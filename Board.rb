class Board
	attr_accessor :board, :horizontal, :vertical, :present_entities

	def initialize(size)
		unless size.class == String
			raise "Board must be initialized with a String."
		end

		size_info = size.split(" ")
		@horizontal = size_info[0].to_i + 1
		@vertical = size_info[1].to_i + 1

		@board = []
		@horizontal.times do |i|
			@board << []
			@vertical.times do
				@board[i] << []
			end
		end
		@present_entities = []
	end

	def save_final_position(rover)
		@present_entities << rover.final_position.split(" ")
	end
end