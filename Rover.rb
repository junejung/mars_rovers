class Rover
	attr_accessor :position, :direction
	DIRECTION_METRIX = ["N","E","S","W"]
	def initialize(start_position, instructions)
		start_position(start_position)
		make_matrix
		execute_instructions(instructions)
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
		direction_letter = DIRECTION_METRIX[@direction]
		return "#{position_string} #{direction_letter}"
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

	def start_position(start_input)
		start_input = start_input.split(" ")
		x = start_input[0].to_i
		y = start_input[1].to_i
		@position = [x, y]
		@direction = DIRECTION_METRIX.index(start_input[2])
	end
end