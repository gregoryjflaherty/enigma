require './lib/command_line'

require 'rspec'
RSpec.describe do CommandLine

  context 'setup' do
    it 'encrypts w/ CLI' do
      test_file = File.open('./test_file.txt', 'r')
      test_file_2 = './test_file_2.txt'
      expect(CommandLine.encrypt_message(test_file, test_file_2)).to include("Created '#{test_file_2.to_s}'")

    it 'decrypts w/ CLI' do
      test_file = File.open('./test_file.txt', 'r')
      test_file_2 = './test_file_2.txt'
      expect(CommandLine.decrypt_message(test_file, test_file_2, '08304', '040289')).to include("Created '#{test_file_2.to_s}'")
    end
  end
end
