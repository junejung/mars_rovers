require './Board.rb'
require './rover.rb'

file_name = ARGV[0] || 'input.txt'
file_name = "./#{file_name}"
unless File.exists? file_name
	raise "Can't find file."
end
@document = File.readlines(file_name)
@document.each { |e| 
	e.gsub("\n","")  
}
@board = Board.new(@document.shift)

until @document.empty?
	rover = Rover.new(@document.shift, @document.shift)
	@board.save_final_position(rover)
end



puts "Printing data for #{file_name}:"

output_string = ''
@board.present_entities.each do |entity|
	output_string += entity.join(' ') + "\n"
end
puts output_string