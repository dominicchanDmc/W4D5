require "tdd"
require "rspec"
# require 'spec_helper'

describe Array do 
    let(:arr) { [1,2,3,1] }
    let(:arr_1) { [2,2,3,3,1] }
    let(:empty_arr) { [] }
    let(:arr_2) { [1,2,3,-1] }
    let(:arr_3) { [2,-2,3,-3,1] }
    let(:arr_4) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
    let(:arr_5) { [1] }
    
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

    describe "#my_transpose" do  
     it 'should return an empty array when array is empty' do 
        expect(empty_arr.my_transpose).to eq([])
     end

     it 'should return self if array only have 1 element' do     
        expect(arr_5.my_transpose).to eq([1])
     end

     it "should not modify the original array" do
        arr_dup = arr_4.dup
        arr_4.my_transpose 
       expect(arr_4).to eq(arr_dup)
     end

     it 'it needs to correctly transpose from rows to columns'do 
     expect(arr_4.my_transpose).to eq([[0, 3, 6], [1, 4, 7],[2, 5, 8]])
     end

    end
end

describe "#stockPicker" do  
let(:empty_arr) { [] }
let(:one_arr) { [1] }
let(:arr_1) { [1,2,2,4,1] }
let(:arr_2) { [100, 180, 260, 310, 40, 535, 695] }

    it 'should return an empty array when array is empty' do 
        expect{stockPicker(empty_arr)}.to raise_error('At lease input 2 prices')
    end

    it 'should return self if array only have 2 element' do     
        expect{stockPicker(one_arr)}.to raise_error('At lease input 2 prices')
    end

    it 'anarr[1] must gerater than anarr[0]' do 
        result = stockPicker(arr_1)
        expect(result[1]).to be > result[0]
    end

    it 'reault must be most profitable' do 
        expect(stockPicker(arr_1)).to eq([0,3])
        expect(stockPicker(arr_2)).to eq([4,6])     
    end
end

        #[1,2,2,4,1]
        # empty?    raise error
        # if arr.length < 2  raise error
        # anarr[1] must gerater than anarr[0]
        # reault must be most profitable   



        # empty?                           checked
        # check return is array?           checked
        # check not mofiy th eorg array    checked
        # correct result                   checked



        #return empty when no pairs       checked
        #should not modify the original array
        #needs to have the correct order
        

        # empty?    return empty
        # not 2-D array? return [1,2,3]  return [[1],[2],[3]]
        #should not modify the original array

        # needs to have the correct answer






