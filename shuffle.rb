def recursive_shuffle array
  shuffled_array = []
  if array.length < 0
    return shuffled_array
  else
    new_array = []
    random_index = rand(array.length)
    current_index = 0

    array.each do |object|
      if current_index == random_index
        shuffled_array.push object
      else
        new_array.push object
      end
      current_index = current_index + 1
    end
    array = new_array
  end
end

puts recursive_shuffle(['apple', 'strawberry', 'melon', 'watermelon', 'cherry', 'orange'])

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
