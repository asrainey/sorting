def shuffle array
  shuffled = []

  while array.length > 0
    item = rand(array.length)
    current_item = 0
    unshuffled_array = []

    array.each do |object|
      if current_item == item
        shuffle.push object
      else
        unshuffled_array.push object
      end

      current_item = current_item + 1
    end
  array = unshuffled_array
  end
  shuffled
end

puts shuffle (['apple', 'strawberry', 'melon', 'watermelon', 'cherry', 'orange'])
