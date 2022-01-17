require './lib/message'
runner = Message.encrypt_message(File.open(ARGV[0], 'r'))
