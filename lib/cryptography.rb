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
end
