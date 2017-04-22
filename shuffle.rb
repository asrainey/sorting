def recursive_shuffle array
  shuffled_array = []

  while array.length > 0
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
  shuffled_array
end

puts recursive_shuffle ['apple', 'strawberry', 'melon', 'watermelon', 'cherry', 'orange']
