class Rover
	def initialize(start_position, instructions)
		start_position(start_position)
		move(instructions)
	end
	def start_position(start_input)
		start_input = start_input[0].split(" ")
		y = start_input[0]
		x = start_input[1]
		@start_position = @board[x][y]
		way_to_go = start_input[2]
	end

	def move(instructions)
		instructions = instructions[0].split("")

		## todo, ths wasnt in the instricutions, but i think it should check for other rovers in the way
		until instrcutions.empty?
			1. check if another rover is there(maybe raise an error?)look at instructions
			2. move there, 

		end
	end
end





[
[[0,0],[0,1],[0,2],[0,3],[0,4],[0,5]],
[[1,0],[1,1],[1,2],[1,3],[1,4],[1,5]],
[[2,0],[2,1],[2,2],[2,3],[2,4],[2,5]],
[[3,0],[3,1],[3,2],[3,3],[3,4],[3,5]],
[[4,0],[4,1],[4,2],[4,3],[4,4],[4,5]],
[[5,0],[5,1],[5,2],[5,3],[5,4],[5,5]]
]

[[5,0],[5,1],[5,2],[5,3],[5,4],[5,5]]
[[4,0],[4,1],[4,2],[4,3],[4,4],[4,5]],
[[3,0],[3,1],[3,2],[3,3],[3,4],[3,5]],
[[2,0],[2,1],[2,2],[2,3],[2,4],[2,5]],
[[1,0],[1,1],[1,2],[1,3],[1,4],[1,5]],
[[0,0],[0,1],[0,2],[0,3],[0,4],[0,5]],

E -> @board[start_input[0]+ 0][start_input[1]]
N -> @board[start_input[0] + 0 ][start_input[1]]
S -> @board[start_input[0] - 0 ][start_input[1]] 
W -> @board[start_input[0]][start_input[1] - 0 ]

R
L 
M -> 1
