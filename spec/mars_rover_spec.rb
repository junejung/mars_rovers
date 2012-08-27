require 'rspec'
require './mars_rover.rb'

describe 'Mars_rover' do 

	context 'when it initialized with an existing file' do
		it 'should raise error when file can not be found' do
			expect{
				Mars_rover.new('./spec/absent.txt')
			}.to raise_error
		end
		it 'should run code with exsist file' do
			expect{
				Mars_rover.new('./spec/test_input.txt')
			}.to_not raise_error
		end
		it 'should put every line in to an Array' do
			@mars_rover = Mars_rover.new('./spec/test_input.txt')
			@mars_rover.document.should be_an_instance_of Array
		end
		it 'should remove all the new line sytax from element' do
			@mars_rover = Mars_rover.new('./spec/test_input.txt')
			@mars_rover.document[0].should_not == '9 9\n'
		end
	end

	 context 'clean_up' do

		before(:each) do
	 		@mars_rover = Mars_rover.new('./spec/test_input.txt')
	 		@mars_rover.clean_up
	 	end
	 	it 'should create instance valiable of board size as a String' do
	 		@mars_rover.board_size.should be_an_instance_of String
	 	end
	 	it 'should create instance valiable of starting point as a Array' do
	 		@mars_rover.starting_point.should be_an_instance_of Array
	 	end
	 	it 'should create instance valiable of movement as a Array' do
	 		@mars_rover.movement.should be_an_instance_of Array
	 	end
	 	it 'should have the same length of starting point and movement Arrays' do
	 		@mars_rover.starting_point.length.should equal @mars_rover.movement.length
	 	end
		# it 'should have vertical numebr of arrays' do
		# 	@mars_rover.board[0].length.should equal @mars_rover.vertical
		# end
	 end
end