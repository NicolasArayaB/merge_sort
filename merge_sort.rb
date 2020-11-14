def merge_sort(arr)
  sorted_arr = []
  if arr.size < 2
    sorted_arr << arr
  else
    right = arr[0, arr.size/2]
    left = arr[arr.size/2..-1]
    if right[0] > left[0]
      sorted_arr << right[0]
    else
      sorted_arr << left[0]
    end
    
  end
end

merge_sort([2, 5, 3, 6, 7, 1])
