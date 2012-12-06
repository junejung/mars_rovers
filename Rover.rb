class Rover
	attr_accessor :position, :direction
	def initialize(board, x, y, direction)
		@board = board
		@position = [x, y]
		@direction = direction
	end

	def turn_right
		@direction = @direction == 3 ? 0 : @direction + 1
	end

	def turn_left
		@direction = @direction == 0 ? 3 : @direction - 1
	end

	def move
		dimention = (direction + 1) % 2 
		sign = @direction <= 1 ? 1 : -1                                                       
		@position[dimention] += sign
	end

	def execute_instructions(instructions)
		instructions.split("").each do |instruction|
			case instruction
			when "M"
				move
			when "L"
				turn_left
			when "R"
				turn_right
			end
		end
	end

	def check(current_position)
		if current_position == @present_entities[0]
			"Rover crushed"
		end
	end
end
