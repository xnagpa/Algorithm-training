require 'spec_helper'

describe InsertionSort do
  it 'sorts given short array' do
    array = [122, 2, 22, 13, 1, 1, 1, 0]
    expect(InsertionSort.perform(array)).to eq [0, 1, 1, 1, 2, 13, 22, 122]
  end

  it 'sorts given array of random numbers ' do
    array = (0..50).to_a.sort { rand - 0.5 }
    expect(InsertionSort.perform(array)).to eq array.sort
  end

  it 'sorts freaking huge array of random numbers ' do
    array = (0..10_000).to_a.sort { rand - 0.5 }
    expect(InsertionSort.perform(array)).to eq array.sort
  end

  array = (0..10_000).to_a.sort { rand - 0.5 }
  puts Benchmark.measure { InsertionSort.perform(array) }
end
