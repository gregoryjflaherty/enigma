require './lib/message'
runner = Message.decrypt_message(File.open(ARGV[0], 'r'))
