require './controller.rb'

file_name = ARGV[0] || 'input.txt'
my_mars_rover = Controller.new(file_name)
puts "Printing data for #{file_name}:"
my_mars_rover.output
