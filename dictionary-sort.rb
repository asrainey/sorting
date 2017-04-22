def dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |object|
    if object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = object
    else
      still_unsorted.push object
    end
  end
  sorted.push smallest

  dict_sort still_unsorted, sorted
end

def sort some_array
  dict_sort some_array, []
end

puts sort(['apple', 'strawberry', 'Melon', 'watermelon', 'cherry', 'orange'])
