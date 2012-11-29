class Rover
	attr_accessor :position, :direction
	DIRECTION_MATRIX = ["N","E","S","W"]
	def initialize(board, origin)
		@board = board
		set_origin(origin)
		make_matrix
		final_position
	end

	def turn_right
		@direction = @direction == 3? 0 : (@direction + 1)
	end

	def turn_left
		@direction = @direction == 0? 3 : (@direction - 1)
	end

	def move
		@move_matrix[@direction].call
	end

	def final_position
		position_string = @position.join(' ')
		direction_letter = DIRECTION_MATRIX[@direction]
		return "#{position_string} #{direction_letter}"
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
		@board.save_final_position(self)
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

	def set_origin(origin)
		origin = origin.split(" ")
		x = origin[0].to_i
		y = origin[1].to_i
		@position = [x, y]
		@direction = DIRECTION_MATRIX.index(origin[2])
	end
end