require 'rspec'
require './../Board.rb'

describe 'Board' do 

	context "#initialize" do
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

		context 'creates board' do
			before(:each) do
				@mars_rover = Board.new("10 4")
			end
			it 'should set first argument as the horizontal size' do
				@mars_rover.horizontal.should == 11
			end
			it 'should set first argument as the vertical size' do
				@mars_rover.vertical.should == 5
			end
			it 'should correctly build horizontal axis' do
			@mars_rover.board.length.should equal @mars_rover.horizontal
		    end
			it 'should correctly build vertical axis' do
				@mars_rover.board[0].length.should equal @mars_rover.vertical
			end
			it 'should maintain same length of axises' do
				@mars_rover.board[5].length.should equal @mars_rover.board[3].length
			end
		end
	end

end