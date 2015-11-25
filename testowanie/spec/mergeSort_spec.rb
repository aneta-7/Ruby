require 'simplecov'
SimpleCov.start

require_relative '../lib/mergeSort'

RSpec.describe 'mergeSort.rb' do
  describe '#mergeSort' do

    let(:random_arr) { Array.new(10) { rand(100) } }
    let(:sorted_random_arr) { random_arr.sort }

    it "should sort an unsorted array" do
        expect(merge_sort!([1, 3, 5, 7, 9, 8, 6, 4, 2, 0])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        expect(merge_sort!([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        expect(merge_sort!(random_arr)).to eq(sorted_random_arr)
        expect(merge_sort!([1, 2, 3, 4, 5, 0, 4, 3, 2, 1])).to eq([0, 1, 1, 2, 2, 3, 3, 4, 4, 5])
    end

    it "should return an empty array, when given zero elements" do
      expect(merge_sort!([])).to eq([])
    end

    it "should handle single element arrays" do
       expect(merge_sort!([3])).to eq([3])
    end

    it "should handle small and simple arrays" do
      expect(merge_sort!([2, 1])).to eq([1, 2])
      expect(merge_sort!([9, 2, 3])).to eq([2, 3, 9])
    end

    it "should not alter an already sorted array" do
      expect(merge_sort!(sorted_random_arr)).to eq(sorted_random_arr)
    end

  end
end
