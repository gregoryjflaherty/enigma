require './lib/shift'

class Enigma
  attr_reader :message, :key, :date, :shift

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @shift = Shift.new(@key, @date)
  end

  def encrypt(message, key, date)
    hash_output = {
      :encryption => @shift.change('encrypt', message, @shift.shift_array),
      :key => key,
      :date => date
    }
  end
end
