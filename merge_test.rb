gem 'minitest', '~>5.0'

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'

require_relative 'merge'

describe Merge do
  it "returns an empty array if given an empty array" do
    arr = []
    assert_equal([], Merge.arry(arr))

  end
  it "returns false if given nil" do
    arr = nil
    assert_equal(false, Merge.arry(arr))
  end
  it "returns false if given something other than an array" do
    arr = "hi there"
    assert_equal(false, Merge.arry(arr))
  end
  it "trims a 2 dimensional array of any trailing empty arrays" do
    arr = [[1], []]
    assert_equal([1], Merge.trim(arr))
  end

  it "trims a 2 dimensional array with one element down to a 1 dimensional array" do
    arr = [[1]]
    assert_equal([1], Merge.trim(arr))
  end

  it "accepts a 2 dimensional array with 1 Fixnum and returns the Fixnum" do

    arr = [[1]]
    assert_equal([1], Merge.arry(arr))

  end
  it "accepts 2 arrays from Split module and merges them" do

    arr1 = [2,3]
    arr2 = [1,4]
    assert_equal([1,2,3,4], Merge.merg(arr1, arr2))
  end
  it "accepts 2 arrays with a differeing amount of elements and merges them" do
    arr1 = [2,3]
    arr2 = [4]
    assert_equal([2,3,4], Merge.merg(arr1, arr2))

  end

  it "accepts a slightly less simple dimensional array from Split module and merges it" do

    arr = [[2,3],[4,6],[1,5],[8,11]]
    assert_equal([[2,3,4,6],[1,5,8,11]], Merge.arry(arr))
  end

  it "accepts a slightly less simple dimensional array with an odd amount of elements and merges them" do
    arr = [[2,3],[4,6],[1,5],[8,11], [7,12]]
    assert_equal([[2,3,4,6],[1,5,8,11], [7,12]], Merge.arry(arr))
  end

  it "accepts a complicated array with both odd an odd number of elements and un even arrays" do
    arr = [[2,3,4,6],[1,5,8,11], [7,12]]
    assert_equal([[1,2,3,4,5,6,8,11], [7,12]], Merge.arry(arr))

  end

  it "accepts another complicated array with both odd an odd number of elements and un even arrays" do
    arr = [[1,2,3,4,5,6,8,11], [7,12]]
    assert_equal([1,2,3,4,5,6,7,8,11,12], Merge.arry(arr))

  end
  it "merges arrays in succession until a unified array is outputed" do
    arr = [[2,3],[4,6],[1,5],[8,11], [7,12]]
    assert_equal([1,2,3,4,5,6,7,8,11,12], Merge.all(arr))

  end

  it "automates interaction between split and merge modules" do
    arr = [36, 59, 27, 70, 77, 1, 44, 71, 62, 42]
    assert_equal([1, 27, 36, 42, 44, 59, 62, 70, 71, 77], Merge.sort_this(arr))

  end






end
