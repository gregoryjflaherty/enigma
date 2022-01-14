require './lib/key'
require './lib/date'

class Shift
  attr_reader :letters, :key, :offset

  def initialize(key, date)
    @letters = ("a".."z").to_a << " "
    @key = Key.new(key)
    @offset = Date.new(date)
  end
end
