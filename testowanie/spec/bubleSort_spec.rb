require 'simplecov'
SimpleCov.start

require_relative '../lib/bubleSort'

RSpec.describe 'bubleSort.rb' do
  describe '#bubleSort' do
    let(:arr) { [3, 5, 1, 0, 2, 4, 9, 6, 7, 8] }
    let(:random_arr) { Array.new(10) { rand(100) } }
    let(:sorted_random_arr) { random_arr.sort }

  it "should sort an unsorted array" do
      expect(bubble_sort!(arr)).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
      expect(bubble_sort!([6, 3, 5, 4, 5, 0, 5, 3, 3, 6])).to eq([0, 3, 3, 3, 4, 5, 5, 5, 6, 6])
      expect(bubble_sort!([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
      expect(bubble_sort!(random_arr)).to eq(sorted_random_arr)
  end

  it "should return an empty array, when given zero elements" do
        expect(bubble_sort!([])).to eq([])
  end

  it "should handle single element arrays" do
    expect(bubble_sort!([9])).to eq([9])
  end

  it "should not alter an already sorted array" do
     expect(bubble_sort!(sorted_random_arr)).to eq(sorted_random_arr)
     expect(bubble_sort!([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it "should handle small and simple unsorted arrays" do
      expect(bubble_sort!([3, 2, 1])).to eq([1, 2, 3])
      expect(bubble_sort!([2, 1])).to eq([1, 2])
  end
 end
end
