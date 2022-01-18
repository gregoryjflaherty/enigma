require './lib/command_line'
runner = CommandLine.encrypt_message(File.open(ARGV[0], 'r'))
