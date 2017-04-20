def recursive_shuffle array
  item = array[rand(array.length)]
  shuffled_array = []

  if array.length < 0
    return shuffled_array
  else
    shuffled_array.push item
    item = array[rand(array.length - 1)]
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
