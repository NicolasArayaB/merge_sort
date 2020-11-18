def merge_sort(arr)
  n = arr.size
  
  if n < 2
    arr
  else
      left = merge_sort(arr[0...n / 2])
      right = merge_sort(arr[n / 2...n])
      merge(left, right)  
  end
end

def merge(left, right)
  ary = []

  until left.size == 0 || right.size == 0
    if left[0] > right[0]
      ary << right.shift
    else
      ary << left.shift
    end
  end

  if left.size == 0
    ary += right
  else
    ary += left
  end
  p ary
end

merge_sort([9, 2, 5, 3, 6, 1, 4, 7, 2, 1])
