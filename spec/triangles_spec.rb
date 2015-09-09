require 'spec_helper'

describe TriangleDetector do

  it "finds triangle in a common arrray" do
    array=[10, 2, 5, 1, 8, 20]
    expect(TriangleDetector.detect(array)).to eq 1
  end
  #
  it "finds triangle if there are multiple triangles in array" do
    array=[1,2,3,4,5,6,7,8,9,10,16]
    expect(TriangleDetector.detect(array)).to eq 1
  end
  #
  it "finds triangle even if there are negative numbers in array" do
    array=[10,20,49, 1,30,1,2,1 , -1, -2, -3]
    expect(TriangleDetector.detect(array)).to eq 1
  end

  it "finds triangle even if there is 0 in array" do
    array=[10,20,49, 1,30,1, 0,2,1 , -1, -2, -3]
    expect(TriangleDetector.detect(array)).to eq 1
  end

  it " doesnt find triangle in array without triangles" do
    array=[10, 50, 5, 1]
    expect(TriangleDetector.detect(array)).to eq 0
  end


end
