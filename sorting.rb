#Had to look at solution to complete this
def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |object|
    if object < smallest
      still_unsorted.push smallest
      smallest = object
    else
      still_unsorted.push object
    end
  end
  sorted.push smallest

  recursive_sort still_unsorted, sorted
end

def sort some_array
  recursive_sort some_array, []
end

puts sort(['apple', 'strawberry', 'melon', 'watermelon', 'cherry', 'orange'])
