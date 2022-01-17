require './lib/shift'
class Enigma
  include Producer

  def encrypt(message, key= produce_rand_key, date= produce_todays_date)
    shift = Shift.new(key, date)
    hash_output = {
      :encryption => shift.change('encrypt', message.downcase, shift.shift_array),
      :key => key,
      :date => date
    }
  end

  def decrypt(message, key, date = produce_todays_date)
    shift = Shift.new(key, date)
    hash_output = {
      :decryption => shift.change('decrypt', message.downcase, shift.shift_array),
      :key => key,
      :date => date
    }
  end
end
