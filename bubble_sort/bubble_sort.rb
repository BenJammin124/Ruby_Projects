array = [8, 6, 1, 10]
def bubble_sort(array)
  i = 0
  not_sorted = false
  while i < array.length
    j = i + 1
    not_sorted = false

    while j < array.length
      if array[i] > array[j]
        result = array[i]
        array[i] = array[j]
        array[j] = result
        not_sorted = true
        p array
      end
      j += 1
    end
    break unless not_sorted

    i += 1
  end
  p array
end

bubble_sort(array)
