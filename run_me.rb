require './Board.rb'
require './rover.rb'

file_name = ARGV[0] || 'input.txt'
file_name = "./#{file_name}"
raise "Can't find file." unless File.exists? file_name

lines = File.readlines(file_name).each { |l| l.gsub("\n","") }
board = Board.new(lines.shift)

puts "Printing data for #{file_name}:"

DIRECTION_MATRIX = ["N","E","S","W"]
until lines.empty?
    start = lines.shift.split(" ")
	x = start[0].to_i
	y = start[1].to_i
	direction = start[2]
	instructions = lines.shift
	rover = Rover.new(board, x, y, direction)
	rover.execute_instructions(instructions)
	puts "#{rover.position.join(' ')} #{DIRECTION_MATRIX[rover.direction]}\n"
	puts "#{lines.shift.chomp} (predicted)"
	puts '-------'
end
