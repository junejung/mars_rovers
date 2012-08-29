require 'rspec'
require './controller.rb'

describe 'Controller' do 

	describe '#initialize' do
		it 'should raise error when file can not be found' do
			expect{
				Controller.new('./spec/absent.txt')
			}.to raise_error
		end
		it 'should run code with exsist file' do
			expect{
				Controller.new('./spec/test_input.txt')
			}.to_not raise_error
		end

		context 'when it takes approprate file' do
			before(:each) do
				@controller = Controller.new('./spec/test_input.txt')
			end	
			it 'should create a document array' do
				@controller.document.should be_an_instance_of Array
			end
			it 'should remove all the new line sytax from document' do
				@controller.document.include?("\n").should be_false
			end
		end
	end

	describe ".output" do
		it 'should output correct string' do
			STDOUT.should_receive(:puts).with("1 6 N\n9 1 E\n")
			@controller = Controller.new('./spec/test_input.txt')
			@controller.output
		end
	end
end