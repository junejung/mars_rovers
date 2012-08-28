require 'rspec'
require './rover.rb'

describe 'Rover' do 

	context 'initialize' do
		it 'should take two strings as argument' do
			expect{
				Rover.new('1 2 N', 'MMAKMKD')
			}.to_not raise_error
		end
	end

	context 'make_matrix' do
	end

	 context 'start_position' do
		before(:each) do
	 		@my_rover = Rover.new('1 2 N', 'MMAKMKD')
	 	end
	 end

	 context 'execute_instructions' do
	 end

	 context 'turn_right' do
	 end

	 context 'turn_left' do
	 end

	 context 'move' do
	 end
end