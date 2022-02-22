require "pry-byebug"

def stock_picker(arr)
  pos_max = 0
  pos_min = 0
  min = arr[0]
  days = []
  diff = 0

  while pos_min < arr.length
    while pos_max < arr.length
      if (arr[pos_max] - arr[pos_min]) > diff
        days = [pos_min, pos_max]
        diff = arr[pos_max] - arr[pos_min]
      end
      pos_max = pos_max +1
    end
    pos_min = pos_min + 1
    pos_max = pos_min
  end

  return days

end


puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([7,3,5,8,4,2,6,9])