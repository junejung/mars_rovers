class Rover
	attr_accessor :position, :direction
	def initialize(board, x, y, direction)
		@board = board
		set_origin(x, y, direction)
		make_matrix
	end

	def turn_right
		@direction = @direction == 3 ? 0 : @direction + 1
	end

	def turn_left
		@direction = @direction == 0 ? 3 : @direction - 1
	end

	def move
		@move_matrix[@direction].call
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

	private

	def make_matrix
		@move_matrix = {
			0 => lambda {@position[1] += 1},
			1 => lambda {@position[0] += 1},
			2 => lambda {@position[1] -= 1},
			3 => lambda {@position[0] -= 1}
		}
	end

	def set_origin(x, y, direction)
		@position = [x, y]
		@direction = DIRECTION_MATRIX.index(direction)
	end
end