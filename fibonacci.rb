def fibs (n)
  arr = []
  arr[0] = 0
  arr[1] = 1
  i = 2
  while (i < n)
    arr[i] = arr[i-1] + arr[i-2]
    i += 1
  end
  return arr
end

puts fibs (8)
puts "---------------------"

def fibs_rec (n)
  if (n == 0)
    return [0]
  elsif (n == 1)
    return [0,1]
  else
    temp1 = fibs_rec(n-1)
    #puts "Gde: #{temp1}"
    temp1.push(temp1[-2] + temp1[-1])# + fibs_rec(n-2)
#    arr << (fibs_rec(n-1) + fibs_rec(n-2))
  end
end

puts fibs_rec(8)
puts fibs_rec(1)
puts fibs_rec(0)