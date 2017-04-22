def recursive_shuffle array, shuffled_array
  if array.length < 0
    return shuffled_array
  end

  index = rand(array.length)
  item = array[index]
  new_array = []

  array.each do |object|
    if object != item
      new_array.push item
      item = object
    else
      new_array.push object
    end
    shuffled_array.push object
  end
    recursive_shuffle new_array, shuffled_array
end

def shuffle some_array
  recursive_shuffle some_array, []
end

puts shuffle(['apple', 'strawberry', 'melon', 'watermelon', 'cherry', 'orange'])

#below here is prior work (for reference)
#  while array.length > 0
#    item = rand(array.length)
#    current_item = 0
#    unshuffled_array = []

#    array.each do |object|
#      if current_item == item
#        shuffle.push object
#      else
#        unshuffled_array.push object
#      end

#      current_item = current_item + 1
#    end
#  array = unshuffled_array
#  end
#  shuffled
# end
