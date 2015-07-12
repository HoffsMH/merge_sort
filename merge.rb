require_relative 'split'
require 'pry'

module Merge
  include Split


  def self.arry(orig_arr)

    temp_arr = orig_arr
    new_arr = []

    if !(temp_arr) || !(temp_arr.is_a? Array) #if our passed array isn't an array
      return false
    elsif (temp_arr == []) #if our passed array is a blank array
      return temp_arr

    else
      #pop 2 elements off the array
      # merge them into one merged_arr
      # append the merged_arr new_array
      #trim the new_array
      #return the new_array

      until temp_arr == []

        temp1 = temp_arr.shift
        temp2 = temp_arr.shift

        merged_arr = merg(temp1, temp2)
        new_arr << merged_arr
      end # until temp_arr == []
      return Merge.trim(new_arr)
    end #if !(temp_arr) || !(temp_arr.is_a? Array)




  end #arry
  def self.trim(arr)
    if (arr.length > 1) && (arr[-1] == [])
      arr.pop
    end
    if (arr.length == 1) && (arr[0].is_a? Array)
      return arr[0]
    end
    return arr

  end #self.trim()

  def self.merg(temp1, temp2)
    merged_arr = []
    if (temp1 && temp2)  && (temp1.is_a? Array) && (temp2.is_a? Array)
      until temp1 == [] && temp2 ==[]
        case
        when temp1 == []
          temp2.each { |element| merged_arr << element}
          temp2 = []
        when temp2 == []
          temp1.each { |element| merged_arr << element}
          temp1 = []
        when temp1[0] < temp2[0]
          merged_arr << temp1[0]
          temp1.shift
        when temp2[0] < temp1[0]
          merged_arr << temp2[0]
          temp2.shift
        end

      end #until temp1 == [] && temp2 ==[]
    elsif (temp1) && (temp1.is_a? Array)
      merged_arr = temp1
    else
      merged_arr == false
    end #if (temp1 && temp2)  && (temp1.is_a? Array) && (temp2.is_a? Array)
    return merged_arr

  end #def self.merg(temp1, temp2)

  def self.all(arr)
    until Merge.unified?(arr)
       arr = Merge.arry(arr)
    end
    return arr

  end #def self.all(arr)

  def self.unified?(arr)
    unified = true
    arr.each do |element|
      if !(element.is_a? Fixnum)
        unified = false
      end
    end
    return unified
  end #def self.unified?(arr)

  def self.sort_this(arr)
    arr = Split.arry(arr)
    arr = Merge.all(arr)
    return arr

  end #def self.sort_this(arr)
end #module Merge


if __FILE__ == $0
  puts "Input array size:"
  arry_size = gets.chomp
  arry_size = arry_size.to_i

  arr = (1..arry_size*10).to_a.sample(arry_size)
  puts ""
  puts "Randomized Array as follows(Enter):"
  foo = gets.chomp
  p arr
  puts ""
  puts ""
  puts ""
  puts "Enter to sort"
  foo = gets.chomp
  puts ""
  puts ""
  p Merge.sort_this(arr)
end
