require './rover.rb'
require './board.rb'

class Controller
	attr_accessor :document, :board_size, :starting_point, :movement

	def initialize(filename)
		unless File.exists? "./#{filename}"
			raise "Can't find file."
		end
		@document = File.readlines("./#{filename}")
		@document.each { |e| 
			e.gsub("\n","")  
		}
		@board = Board.new(@document.shift)
		parse_document
	end

	def output 
		output_string = ''
		@board.present_entities.each do |entity|
			output_string += entity.join(' ') + "\n"
		end
		puts output_string
	end

	private

	def parse_document
		until @document.empty?
			rover = Rover.new(@document.shift, @document.shift)
			@board.save_final_position(rover)
		end
	end	
end
