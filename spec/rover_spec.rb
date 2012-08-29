require 'rspec'
require './rover.rb'

describe 'Rover' do 

	context '#initialize' do
		it 'should require two arguments' do
			expect{
				Rover.new('1 2 N')
			}.to raise_error
		end
		it 'should take two arguments' do
			expect{
				Rover.new('1 2 N', 'MMLLMMR')
			}.to_not raise_error
		end

		it 'should call all proper methods' do
			Rover.any_instance.should_receive(:start_position)
			Rover.any_instance.should_receive(:make_matrix)
			Rover.any_instance.should_receive(:execute_instructions)
			Rover.any_instance.should_receive(:final_position)
			rover = Rover.new('1 2 N', '')
		end
	end

	# context 'start_position' do
	# 	before(:each) do
	#  		@my_rover = Rover.new('1 2 N', 'MMAKMKD')
	#  	end
	#  	it 'should set x y postion with given input with array' do
	#  		@my_rover.position.should be_an_instance_of Array
	#  	end
	#  	it 'should hold two element in position' do
	#  		@my_rover.position.length.should == 2
	#  	end
	#  	it 'should set direction with given input as integer' do
	#  		@my_rover.direction.should be_an_instance_of Fixnum
	#  	end
	# end

	context '.turn_right' do
		it "should turn left correctly when direction is 'W'" do
	 		rover = Rover.new('1 1 W', '')
	 		rover.direction.should == 3
	 		rover.turn_right
	 		rover.direction.should == 0
	 	end
	 	it "should turn left correctly" do
	 		rover = Rover.new('1 1 E', '')
	 		rover.direction.should == 1
	 		rover.turn_right
	 		rover.direction.should == 2
	 	end
	end

	context '.turn_left' do
	 	it "should turn left correctly when direction is 'N'" do
	 		rover = Rover.new('1 1 N', '')
	 		rover.direction.should == 0
	 		rover.turn_left
	 		rover.direction.should == 3
	 	end
	 	it "should turn left correctly" do
	 		rover = Rover.new('1 1 E', '')
	 		rover.direction.should == 1
	 		rover.turn_left
	 		rover.direction.should == 0
	 	end
	end

	context '.move' do
	 	it 'should call the make matrix method' do
	 		rover = Rover.new('1 1 E', '')
	 		rover.position.should == [1, 1]
	 		rover.move
	 		rover.position.should == [2, 1]
	 	end
	 end

	 context '.final_position' do
	 	it 'should return a string' do
	 		rover = Rover.new('3 3 E', 'MMRMMRMRRM')
	 		rover.final_position.should == "5 1 E" 
	 	end
	 end
end