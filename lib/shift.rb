require './lib/key'
require './lib/offset'
require './lib/cryptography'
require './lib/producer'

class Shift
  include Cryptography
  include Producer
  attr_reader :letters,
              :key,
              :offset
              :shift_array

  def initialize(key, date)
    @letters = ("a".."z").to_a << " "
    @key = key
    @offset = date
    @shift_array = produce_shift_array(key, date)
  end
end
