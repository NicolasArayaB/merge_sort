def merge_sort(arr)
  n = arr.size
  b = []
  c = []
  
  if n == 2
    b << arr[0]
    c << arr[1]
    merge(b.flatten, c.flatten, arr.flatten)
  elsif n == 1
    puts arr
  elsif n > 1
    b << arr[0..n/2]
    c << arr[(n/2)..n]
    merge_sort(b.flatten)
    merge_sort(c.flatten)
    merge(b.flatten, c.flatten, arr.flatten)
  end
end

def merge(b, c, arr)
  r = b.size
  q = c.size
  b_pointer = 0
  c_pointer = 0
  a_pointer = 0
  b[b_pointer]

  while b_pointer < r && c_pointer < q
    if b[b_pointer] < c[c_pointer]
      arr[a_pointer] = b[b_pointer]
      b_pointer =+ 1
    else
      arr[a_pointer] = c[c_pointer]
      c_pointer =+ 1
    end
    a_pointer =+ 1
  end

  if b_pointer == r
    arr[a_pointer..r+q] << c[c_pointer..q]
  else
    arr[a_pointer..r+q] << b[b_pointer..p]
  end
end


merge_sort([2, 5, 3, 6])
