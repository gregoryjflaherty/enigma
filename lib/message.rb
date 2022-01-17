require './lib/encrypt'
require './lib/enigma'

class Message

  def self.encrypt_message(message)
    text = message.read
    message.close
    machine = Enigma.new
    encrypted_message = machine.encrypt(text.strip)
    output = File.open(ARGV[1], 'w')
    output.write(encrypted_message[:encryption])
    puts "Created '#{ARGV[1].to_s}' with the key #{encrypted_message[:key]} and the date #{encrypted_message[:date]}"
  end
end
Message.encrypt_message(File.open(ARGV[0], 'r'))
