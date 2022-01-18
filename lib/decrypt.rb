require './lib/command_line'
runner = CommandLine.decrypt_message(File.open(ARGV[0], 'r'))
