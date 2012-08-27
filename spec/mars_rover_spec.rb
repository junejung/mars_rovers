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
	end

	context 'dsf' do

		before(:each) do
			@mars_rover = Board.new("10 4")
		end
		# it 'should set first number argument as horizontal integer' do
		# 	@mars_rover.horizontal.should == 10
		# end
		# it 'should set first number argument as vertical integer' do
		# 	@mars_rover.vertical.should == 4
		# end
		# it 'should create board array' do
		# 	@mars_rover.board.should be_an_instance_of Array
		# end
		# it 'should have horizontal numebr of arrays' do
		# 	@mars_rover.board.length.should equal @mars_rover.horizontal
		# end
		# it 'should have vertical numebr of arrays' do
		# 	@mars_rover.board[0].length.should equal @mars_rover.vertical
		# end
	end
end