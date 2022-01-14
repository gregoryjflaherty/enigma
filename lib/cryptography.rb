module Cryptography
  def once_around(shift)
    shift > 27 ? shift % 27 : shift
  end

  def rotate(letters, single_letter, shift)
    letters.each_with_index do |letter, index|
      new_shift = index + shift
      if letter == single_letter
        return letters[once_around(new_shift)]
      end
    end
  end

  def change(letters, message, shift_array)
    new_message = []
    message.split("").each_with_index do |letter, index|
      new_message << rotate(letters, letter, shift_array[index])
    end
    new_message.join
  end
end
