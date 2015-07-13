module MergeSort
  def self.sort(input_array)
    puts "Sorting #{input_array.inspect}"
    # [2, 5]
    if input_array.length < 2
      # Hint: It's already sorted
      puts "\tReturning array < 2: #{input_array}"
      input_array
    else
      # 1) Split the array in half
      index_of_mid_point = (input_array.length / 2.0).floor

      lower_array = input_array[0...index_of_mid_point]
      upper_array = input_array[index_of_mid_point..-1]

      # 2) Sort each array using MergeSort
      sorted_lower_array = MergeSort.sort(lower_array)
      sorted_upper_array = MergeSort.sort(upper_array)

      # 3) Merge to the two arrays
      merge(sorted_lower_array, sorted_upper_array)
    end
  end

  def self.merge(array_one, array_two)
    # if either array_one or array_two is empty, return the other one
    print "Merging #{array_one} (1) + #{array_two} (2) = "
    merged = if array_one.empty?
      array_two
    elsif array_two.empty?
      array_one
    elsif array_one.first <= array_two.first
      [array_one.first] + merge(array_one[1..-1], array_two)
      # [array_one.first, array_two.first]
    elsif array_one.first > array_two.first
      [array_two.first] + merge(array_one, array_two[1..-1])
      # [array_two.first, array_one.first]
    end
    puts "#{merged} (F)"
    merged

  end
end



__END__

[1, 5]  [3]

[1, merge([5], [3])]

        [6,5,3,7,8,9,10]

    [6,5,3]        [7,8,9,10]

  [6,5] [3]      [7,8]     [9,10]

[6] [5] [3]        [7] [8]  [9]  [10]


.merge(array1, array2)

.merge([6], [5])  # => [5, 6]
.merge([3])
