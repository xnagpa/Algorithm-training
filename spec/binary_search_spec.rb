require 'spec_helper'

describe BinarySearch do
  before(:each) { @array=[1,2,3,4,5,6,7,8,9,10,16]}
  it{  expect(BinarySearch.perform(1, @array, 0, @array.size-1)).to eq 0}
  it{  expect(BinarySearch.perform(7, @array, 0, @array.size-1)).to eq 6}
  it{  expect(BinarySearch.perform(16, @array, 0, @array.size-1)).to eq 10}
  it{  expect(BinarySearch.perform(2, @array, 0, @array.size-1)).to eq 1}
end
