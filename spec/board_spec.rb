require 'rspec'
require './board.rb'

describe 'Board' do 

	context "initializing" do
		context 'when it is initialized with a String' do
			it 'should raise error when argument is not a String' do
				expect{
					Board.new({:width => 5, :height => 5})
				}.to raise_error
			end
			it 'should take a String as an argument' do
				expect{
					Board.new("5 5")
				}.to_not raise_error
			end
		end

		context 'creating a board' do

			before(:each) do
				@mars_rover = Board.new("10 4")
			end
			it 'should set first number argument as horizontal integer' do
				@mars_rover.horizontal.should == 10
			end
			it 'should set first number argument as vertical integer' do
				@mars_rover.vertical.should == 4
			end
			it 'should create board array' do
				@mars_rover.board.should be_an_instance_of Array
			end
			it 'should have horizontal numebr of arrays' do
				@mars_rover.board.length.should equal @mars_rover.horizontal
			end
			it 'should have vertical numebr of arrays' do
				@mars_rover.board[0].length.should equal @mars_rover.vertical
			end
			it 'should have same numebr of arrays in board' do
				@mars_rover.board[5].length.should equal @mars_rover.vertical
			end
		end
	end
end