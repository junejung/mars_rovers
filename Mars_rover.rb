class Mars_rover
	attr_accessor :document, :board_size, :starting_point, :movement

	def initialize(filename)
		unless File.exists? "./#{filename}"
			raise "Can't find file."
		end
		@document = []
		file = File.readlines("./#{filename}")
		file.each { |l| @document << l }
		@document.each { |e| 
			if e.include?("\n")
				e.gsub!("\n","") 
			end 
		}
		parse_document

	end

	def self.parse_document
		@board_size = @document.shift
		until @document.empty?
			Rover.new(@document.shift[0], @document.shift[0])
		end
	end

end

n = Mars_rover.new('input.txt')