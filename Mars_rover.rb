class Mars_rover
	attr_accessor :document, :f

	def initialize(filename)
		unless File.exists? "#{filename}"
			raise "Can't find file."
		end
		@document = []
		@f = File.readlines("#{filename}")
		@f.each { |l| @document << l }
	end
end

m = Mars_rover.new('input.txt')
puts m.document.inspect