def write_song number
  if number > 2
    num_string = ''

    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    left = number
    write = left/1000
    left = left - write*1000

    if write > 0
      thousands = english_number write
      num_string = num_string + thousands + ' thousand'
      if left > 0
        num_string = num_string + ' '
      end
    end

    write = left/100
    left = left - write*100

    if write > 0
      hundreds = english_number write
      num_string = num_string + hundreds + ' hundred'
      if left > 0
        num_string = num_string + ' '
      end
    end

    write = left/10
    left = left - write*10

    if write > 0
      if ((write == 1) and (left > 0))
        num_string = num_string + teenagers[left - 1]
        left = 0
      else
        num_string = num_string + tens_place[write - 1]
      end
      if left > 0
        num_string = num_string + '-'
      end
    end

    write = left
    left = 0

    if write > 0
      num_string = num_string + ones_place[write-1]
    end
#    puts num_string + ' beer'
     puts 'Take one down, pass it around, ' + num_string + ' bottles of beer on the wall.'
     puts num_string + ' bottles of beer on the wall, ' + num_string + ' bottles of beer.'
     number = number - 1
     write_song number
  end

  if number == 2
    puts 'Two bottles of beer on the wall, Two bottles of beer.'
    puts 'Take one down pass it around, one bottle of beer on the wall.'
    number = number - 1
  end

  if number == 1
    puts 'One bottle of beer on the wall, one bottle of beer'
    puts 'Take one down, pass it around, no bottles of beer on the wall!'
    number = number - 1
  end

  if number == 0
  end
end

write_song 4
