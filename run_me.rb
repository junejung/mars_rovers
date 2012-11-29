require './Board.rb'
require './rover.rb'

file_name = ARGV[0] || 'input.txt'
file_name = "./#{file_name}"
raise "Can't find file." unless File.exists? file_name

lines = File.readlines(file_name).each { |l| l.gsub("\n","") }
board = Board.new(lines.shift)
until lines.empty?
	origin = lines.shift
	instructions = lines.shift
	provious_rover = Rover.new(board, origin).execute_instructions(instructions)
end

puts "Printing data for #{file_name}:"
board.present_entities.each { |e| puts "#{e.join ' '}\n" }
