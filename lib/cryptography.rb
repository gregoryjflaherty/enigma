module Cryptography
  def once_around(shift)
    shift > 27 ? shift % 27 : shift
  end
end
