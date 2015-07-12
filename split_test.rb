gem 'minitest', '~>5.0'

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'

require_relative 'merge'
require_relative 'split'

describe Split do

  it "returns false when given anything other than an array of Fixnums" do
      num1 = 15
      num2 = "hi"
      assert_equal(false, Split.arry([num1, num2]))
  end
  it "accepts 2 numbers, sorts them and returns sorted array" do
    num1 = 2
    num2 = 1
    assert_equal([1,2], Split.sort(num1, num2))
  end
  it "accepts a 2 element array and sorts it" do
    arr =  [2,1]
    assert_equal([[1,2]], Split.arry(arr))

  end


  it "splits a 4 element array into 2 sorted, 2 element arrays" do

    arr = [3,2,4,1]

    assert_equal([[2,3], [1,4]], Split.arry(arr))
  end

  it "splits a 5 element array into 2 sorted, 2 element arrays and 1 single element array" do

    arr = [3,2,4,1,6]

    assert_equal([[2,3], [1,4], [6]], Split.arry(arr))
  end
  it "splits a  10 element array into 5 sorted, 2 element array's" do

    arr = [3,2,4,1,6,20,10,5,8,50]

    assert_equal([[2,3], [1,4], [6,20], [5,10], [8,50]], Split.arry(arr))
  end

  it "splits an  11 element array into 5 sorted, 2 element array's" do

    arr = [3,2,4,1,6,20,10,5,8,50,21]

    assert_equal([[2,3], [1,4], [6,20], [5,10], [8,50], [21]], Split.arry(arr))
  end

end
