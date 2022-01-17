require './lib/enigma'

class CommandLine

  def self.encrypt_message(message, file = ARGV[1])
    text = message.read
    message.close
    machine = Enigma.new
    encrypted_message = machine.encrypt(text.strip)
    output = File.open(file.to_s, 'w')
    output.write(encrypted_message[:encryption])
    "Created '#{file.to_s}' with the key #{encrypted_message[:key]} and the date #{encrypted_message[:date]}"
  end

  def self.decrypt_message(message, file = ARGV[1], key = ARGV[2], date = ARGV[3])
    text = message.read
    message.close
    machine = Enigma.new
    decrypted_message = machine.decrypt(text.strip, key, date)
    output = File.open(file.to_s, 'w')
    output.write(decrypted_message[:decryption])
    "Created '#{file.to_s}' with the key #{decrypted_message[:key]} and the date #{decrypted_message[:date]}"
  end
end
