# All caps letters A - Z = 65 - 90
# Lower case letters a - z = 97 - 122

def caesar_ciper(string, shift)
  stringArr = string.split('')
  stringArr = get_array_of_codes(stringArr)
  stringArr = stringArr.map {|element| shift_code(element, shift)}
  stringArr = stringArr.map {|element| get_shifted_letter(element)}
  stringArr = stringArr.join('')
  stringArr
end

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
  else
    number
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
  else
    number
  end
end

def negative_shift(number, shift)
  if number >= 65 && number <= 90
    if (number + shift) < 65
      number = 91 - 65 + (number + shift)
    else
      number = number - shift
    end
  elsif number >= 97 && number <= 122
    if (number + shift) < 97    
      number = 123 - 97 + (number + shift)
    else
      number = number + shift
    end
  else
    number
  end
end

def get_shifted_letter(number)
  number.chr
end

#p caesar_ciper('Hello World!', 1)