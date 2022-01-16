class Enigma
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @shift = Shift.new(@key, @date)
  end
end
