require './lib/key'
require './lib/offset'
require './lib/cryptography'

class Shift
  include Cryptography
  attr_reader :letters,
              :key,
              :offset,
              :a_shift,
              :b_shift,
              :c_shift,
              :d_shift

  def initialize(key, date)
    @letters = ("a".."z").to_a << " "
    @key = Key.new(key)
    @offset = Date.new(date)
    @a_shift = once_around(@key.a_key + @offset.a_offset)
    @b_shift = once_around(@key.b_key + @offset.b_offset)
    @c_shift = once_around(@key.c_key + @offset.c_offset)
    @d_shift = once_around(@key.d_key + @offset.d_offset)
  end
end
