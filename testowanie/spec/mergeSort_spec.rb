require 'simplecov'
SimpleCov.start

require_relative '../lib/mergeSort'

RSpec.describe 'mergeSort.rb' do
  describe '#mergeSort' do

    it "should sort an unsorted array" do
        expect(merge_sort([1, 3, 5, 7, 9, 8, 6, 4, 2, 0])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        expect(merge_sort([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        expect(merge_sort([1, 2, 3, 4, 5, 0, 4, 3, 2, 1])).to eq([0, 1, 1, 2, 2, 3, 3, 4, 4, 5])
    end

    it "should return an empty array, when given one" do
      expect(merge_sort([])).to eq([])
    end

    it "should handle single element arrays" do
       expect(merge_sort([5])).to eq([5])
    end

    it "should handle small and simple arrays" do
      expect(merge_sort([6, 5])).to eq([5, 6])
      expect(merge_sort([7, 6, 5])).to eq([5, 6, 7])
    end

  end
end
