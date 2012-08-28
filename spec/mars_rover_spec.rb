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
		# it 'should remove all the new line sytax from element' do
		# 	@mars_rover = Mars_rover.new('./spec/test_input.txt')
		# 	@mars_rover.document.should_be empty
		# end
	end

	 context 'parse_document' do
	 	it 'should create instance valiable of board size as a String' do
	 		@mars_rover = Mars_rover.new('./spec/test_input.txt')
	 		@mars_rover.board_size.should be_an_instance_of String
	 	end

	 	it 'instantiates a Rover' do
	 		Rover.should_receive(:new).twice.with(@document).and_return(@document)
	 		@mars_rover = Mars_rover.new('./spec/test_input.txt')
		end

	 end
end