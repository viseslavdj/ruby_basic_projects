def bubble_sort(arr)
  i =0
  j = 1
  while i < arr.length
    while j < arr.length
      if arr[i] > arr[j]
        pom = arr[j]
        arr[j] = arr[i]
        arr[i] = pom 
      else
        arr[i] = arr[i]
        arr[j] = arr[j]
      end
      j = j+1
    end
    i = i+1
    j = i+1
  end

  return arr
end

puts bubble_sort([4,3,78,2,0,2])
puts "----------------------"
puts bubble_sort([37,21,54,6827,9,6,8,332,123,458,867,463,21])