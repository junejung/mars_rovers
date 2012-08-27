class Mars_rover

	def initialize(filename)
		unless File.exists? "./#{filename}"
			raise "Can't find file."
		end
		@document = []
		f = File.readlines("./#{filename}")
		f.each { |l| @document << l }
	end

end

m = Mars_rover.new('input.txt')