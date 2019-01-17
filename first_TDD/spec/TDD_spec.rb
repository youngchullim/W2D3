require "TDD"
require 'rspec'

  RSpec.describe Array do 
    describe "#my_uniq" do 
      it "removes duplicates from array" do 
        expect([1,2,1,3,3].my_uniq).to eq([1,2,1,3,3].uniq)
      end 
    end 

    describe "#two_sum" do 
      it "grabs indices of two elements that sum to zero" do 
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
      end 
    end
    
    describe "#my_transpose" do 
      it "transposes rows into columns" do 
        expect([[0,1,2], [3,4,5], [6,7,8]].my_transpose).to eq([[0,3,6], [1,4,7], [2,5,8]])
      end 
    end 
    
    describe "#stock_picker" do
      it "finds the most profitable days to buy and sell" do
        expect([5,9,2,10,6].stock_picker).to eq([2,3])
      end
    end
  end 