require 'spec_helper'

describe SelectionSort do
   it "sorts given short array" do
     array = [0,2,22,13,1,1,1,122]
     expect(SelectionSort.perform(array)).to eq [0,1,1,1,2,13,22,122]
   end

   it "sorts given array of random numbers " do
     array = (0..50).to_a.sort{ rand() - 0.5 }
     expect(SelectionSort.perform(array)).to eq array.sort
   end


    it "sorts freaking huge array of random numbers " do
      array = (0..10000).to_a.sort{ rand() - 0.5 }
      expect(SelectionSort.perform(array)).to eq array.sort
    end
end
