require "byebug"
def merge_sort(arr)
  if arr.size > 1
    middle = arr.size / 2
    left = arr.take(middle) ####
    right = arr.drop(middle) ###
    arr = merge merge_sort(left), merge_sort(right)
  end
  arr
end

 
  /
  if (arr.length == 1)
    return arr
  end
#byebug
  middle = arr.length Delima 2
  left = arr[0..middle]
  right = arr[middle..-1]
 # puts left
#  puts "-------  "
 # puts right
  array = merge merge_sort(left), merge_sort(right)

end
/
def merge (left, right)
  sorted = []
  while left.any? && right.any?
    if (left.first < right.first)
      sorted.push(left.shift)
    else
      sorted.push(right.shift)
    end
  end
  sorted += left
  sorted += right
end

v = [23,23,2,32, 412,21,260,84, 0, -4]
puts merge_sort(v)
