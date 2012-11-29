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
	origin = lines.shift
	instructions = lines.shift
	rover = Rover.new(board, origin)
	rover.execute_instructions(instructions)
	puts "#{rover.position.join(' ')} #{DIRECTION_MATRIX[rover.direction]}\n"
end
