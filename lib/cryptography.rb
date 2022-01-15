module Cryptography
  def once_around(shift)
    shift > 27 ? shift % 27 : shift
  end

  def rotate(single_letter, shift)
    @letters.each_with_index do |letter, index|
      new_shift = index + shift
      if letter == single_letter
        return @letters[once_around(new_shift)]
      end
    end
  end

  def change(message, shift_array)
    new_message = []
    symbols = 0
    message.split("").each_with_index do |letter, index|
      if !@letters.include?(letter)
        new_message << letter
        symbols += 1
        next
      end
      index -= symbols
      add_changed_letters(new_message, index, letter, shift_array)
    end
    new_message.join
  end

  def add_changed_letters(new_message, index, letter, shift_array)
    index > 3 ? new_index = index % 4 : new_index = index
    new_message << rotate(letter, shift_array[new_index])
  end
end
