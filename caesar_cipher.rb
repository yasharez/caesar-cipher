# All caps letters A - Z = 65 - 90
# Lower case letters a - z = 97 - 122

def get_letter_code(character)
  character.ord
end

def get_array_of_codes(array)
  array.map {|element| get_letter_code(element)}
end

def shift_code(number, shift)
  if shift > 0
    positive_shift(number, shift)
  elsif shift < 0
    negative_shift(number, shift)
  end
end

def positive_shift(number, shift)
  if number >= 65 && number <= 90
    if (number + shift) > 90
      number = 64 + (number + shift) - 90
    else
      number = number + shift
    end
  elsif number >= 97 && number <= 122
    if (number + shift) > 122    
      number = 96 + (number + shift) - 122
    else
      number = number + shift
    end
  end
end

def negative_shift(number, shift)
  if number >= 65 && number <= 90
    if (number - shift) < 65
      number = 91 - (number + shift)
    else
      number = number - shift
    end
  elsif number >= 97 && number <= 122
    if (number - shift) < 97    
      number = 123 - (number + shift) + 97
    else
      number = number - shift
    end
  end
end

def get_shifted_letter(number)
  number.chr
end

puts shift_code(65, -1)