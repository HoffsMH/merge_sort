require 'pry'
module Split
  def self.arry(origin_arr)
    temp_arr = origin_arr

    new_arr = []



    temp1 = 0
    temp2 = 0


    until temp_arr == [] do
      temp1 = temp_arr.shift
      temp2 = temp_arr.shift

      if (temp2)
        result = sort(temp1 , temp2)
      else
        result = [temp1]
      end


      case
      when result == false
        return false
      else
        new_arr << result
      end
    end
    
    return new_arr


  end

  #from here we have a couple things to worry about
  #1 is that temp_arr is now empty after having shifted out its last element in
  #in which case we should be ready to push result to new_arr and return it

  #2 is that temp_arr isn't empty and we we have to push results to new_arr
  # and then continue to shift more elements out of temp_array and hand them
  # to .sort for sorting a

  #3 is if sort returned false which means we have encountered a non Fixnum in the array
  # which means we have to immeadiatly return false in the .arry function

  #its worth noting at this point that If I decided to iterate recursively I would
  #have to pass both the temp_array and new_arr to the function as arguments to keep going

  #for right now lets just use a loop



  def self.sort(num1, num2)

    case
    when !(num1.is_a? Fixnum) || !(num2.is_a? Fixnum)

      return false
    when num1 > num2
      return [num2, num1]
    when num2 > num1
      return [num1, num2]
    when num1 == num2
      return [num1, num2]
    end

  end


end
