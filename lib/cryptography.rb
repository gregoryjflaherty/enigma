module Cryptography
  def once_around(shift)
    shift > 27 ? shift % 27 : shift
  end

  def rotate(letters, single_letter, shift)
    letters.each_with_index do |letter, index|
      if letter == single_letter
        if (index + shift) > 27
          return letters[once_around(index + shift)]
        else
          return letters[index + shift]
        end
      end
    end
  end
end
