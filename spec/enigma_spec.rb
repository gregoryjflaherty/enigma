require 'simplecov'
SimpleCov.start

require 'rspec'
require './lib/enigma'
require './lib/shift'
RSpec.describe do Enigma

  context 'setup' do
    let(:machine) {Enigma.new}

    it 'exists' do
      expect(machine).to be_a(Enigma)
    end

    it 'gives encrypt hash' do
      output = {
        :encryption => '!lvjtsquwvbb!',
        :key => '01234',
        :date => '040289'
      }
      expect(machine.encrypt('!hello world!','01234', '040289')).to eq(output)
    end

    it 'gives decrypt hash' do
      output = {
        :decryption => '!hello world!',
        :key => '01234',
        :date => '040289'
      }
      expect(machine.decrypt('!lvjtsquwvbb!','01234', '040289')).to eq(output)
    end

    it 'pattern test hash' do
      output = {
     encryption: "vjqtbeaweqihssi",
     key: "08304",
     date: "291018"
   }
      expect(machine.encrypt("hello world end", "08304", "291018")).to eq(output)
    end

    it 'has a random key' do
     output = machine.encrypt("hello world end")
     expect(output[:key].length).to eq(5)
    end

    it 'gives a date' do
     output = machine.encrypt("hello world end")
     expect(output[:date].length).to eq(6)
    end
  end
end
