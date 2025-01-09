def stock_picker(array)
  lower_index, upper_index = 0, 0 
  max = 0
  i= 0
  while(i < array.length - 1)
    j = i + 1
    while(j < array.length)
      if array[j] - array[i] > max
        max = array[j] - array[i]
        lower_index = i
        upper_index = j
      end
      j += 1
    end
    i += 1
  end 
  [lower_index, upper_index]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
