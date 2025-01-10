def bubble_sort(array)
  len = array.length
  while true
    swapped = false
    for i in 0...len - 1
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    if swapped == false
      break
    end
  end
  array
end

p bubble_sort([1,8,3,2,7,9])