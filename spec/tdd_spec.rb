require "tdd"
require "rspec"
# require 'spec_helper'

describe Array do 
    let(:arr) { [1,2,3,1] }
    let(:arr_1) { [2,2,3,3,1] }
    let(:empty_arr) { [] }
    
    describe "#my_uniq" do  
      it "should return empty array if input a empty array" do 
        expect(empty_arr.my_uniq).to eq([])
      end

      it "should return a array" do 
        expect(arr.my_uniq).to be(Array)
      end

      it "should return the original array" do
        return_val = arr.my_each { |el| el }
        expect(return_val).to eq(arr)
      end
     
      it "should return a new array" do 
        expect(arr.my_uniq).to_not be(arr)
      end   
      
      it "should return correct result" do 
        expect(arr.my_uniq).to eq([1,2,3])
        expect(arr_1.my_uniq).to eq([2,3,1])
      end
    end
end

        # empty?                           checked
        # check return is array?           checked
        # check not mofiy th eorg array    checked
        # check is it a new array?         checked
        # correct result                   checked