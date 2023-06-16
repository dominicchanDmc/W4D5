require "tdd"
require "rspec"
# require 'spec_helper'

describe Array do 
    let(:arr) { [1,2,3,1] }
    let(:arr_1) { [2,2,3,3,1] }
    let(:empty_arr) { [] }
    let(:arr_2) { [1,2,3,-1] }
    let(:arr_3) { [2,-2,3,-3,1] }
    # let(:arr_4) { [3,-3,2,-2,1] }
    
    describe "#my_uniq" do  
      it "should return empty array if input a empty array" do 
        expect(empty_arr.my_uniq).to eq([])
      end

      it "should return an array" do 
        expect(arr.my_uniq.class).to be(Array)
      end

      it "should not modify the original array" do
        arr_dup = arr.dup
         arr.my_uniq 
        expect(arr).to eq(arr_dup)
      end
     
      it "should return a new array" do 
        expect(arr.my_uniq).to_not be(arr)
      end   
      
      it "should return correct result" do 
        expect(arr.my_uniq).to eq([1,2,3])
        expect(arr_1.my_uniq).to eq([2,3,1])
      end
    end

    # let(:pair_array){[-1, 0, 2, -2, 1]}

    describe "#two_sum" do  
      it 'should return an empty array when no pairs sum 0' do 
         expect(empty_arr.two_sum).to eq([])
      end
      it "should not modify the original array" do
        arr_dup = arr.dup
         arr.two_sum 
        expect(arr).to eq(arr_dup)
      end

      it "should return correct result" do 
        expect(arr_2.two_sum).to eq([[0,3]])
        expect(arr_3.two_sum).to eq([[0,1], [2,3]])
      end
    end


end

        # empty?                           checked
        # check return is array?           checked
        # check not mofiy th eorg array    checked
        # correct result                   checked



        #return empty when no pairs       checked
        #should not modify the original array
        #needs to have the correct order
        