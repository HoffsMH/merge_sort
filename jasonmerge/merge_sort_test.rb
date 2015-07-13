gem 'minitest', '~>5.0'

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require_relative 'merge_sort'

describe MergeSort do
  # describe '.merge(array, array)' do
  #   describe 'for two empty arrays' do
  #     it 'returns an empty array' do
  #       input_array_1 = []
  #       input_array_2 = []
  #
  #       actual = MergeSort.merge(input_array_1, input_array_2)
  #
  #       assert_equal([], actual)
  #     end
  #   end
  #
  #   describe 'when one of the arrays is empty' do
  #     it 'returns the other array' do
  #       input_array_1 = [5]
  #       input_array_2 = []
  #
  #       actual = MergeSort.merge(input_array_1, input_array_2)
  #
  #       assert_equal(input_array_1, actual)
  #     end
  #   end
  #
  #   describe 'when both arrays have one elements' do
  #     it 'returns the sorted merged array' do
  #       input_array_1 = [5]
  #       input_array_2 = [3]
  #
  #       actual = MergeSort.merge(input_array_1, input_array_2)
  #
  #       assert_equal([3,5], actual)
  #     end
  #   end
  #   describe 'when one array has one element and one array has 2 elemets' do
  #     it 'returns the sorted merged array' do
  #       input_array_1 = [2,5]
  #       input_array_2 = [1]
  #
  #       actual = MergeSort.merge(input_array_1, input_array_2)
  #
  #       assert_equal([1,2,5], actual)
  #     end
  #   end
  # end

  describe '.sort(array)' do
    # describe 'zero element array' do
    #   it 'returns the sorted array' do
    #     input_array = []
    #     sorted_array = input_array.sort
    #
    #     assert_equal(sorted_array, MergeSort.sort(input_array))
    #   end
    # end
    # describe 'one element array' do
    #   it 'returns the sorted array' do
    #     input_array = [5]
    #     sorted_array = input_array.sort
    #
    #     assert_equal(sorted_array, MergeSort.sort(input_array))
    #   end
    # end
    # describe 'two element arrays' do
    #   it 'returns the sorted array if it is already sorted' do
    #     input_array = [2, 5]
    #     sorted_array = input_array.sort
    #
    #     assert_equal(sorted_array, MergeSort.sort(input_array))
    #   end
    #   it 'returns the sorted array if it is not already sorted' do
    #     input_array = [5, 2]
    #     sorted_array = input_array.sort
    #
    #     assert_equal(sorted_array, MergeSort.sort(input_array))
    #   end
    # end

    def test_foo
      input_array = (1..10).to_a.sample(5)
      sorted_array = input_array.sort

      assert_equal(sorted_array, MergeSort.sort(input_array))
    end
  end
end
