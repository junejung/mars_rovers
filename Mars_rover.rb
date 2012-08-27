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
	end

	def clean_up
		@board_size = @document[0]
		@starting_point, @movement = @document.partition.with_index {|e, i| i.odd? }
		@movement.shift
	end

end

n = Mars_rover.new('input.txt')
m = n.clean_up
puts n.board_size.inspect
puts n.starting_point.inspect
puts n.movement.inspect