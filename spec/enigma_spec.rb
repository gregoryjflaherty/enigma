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
  end
end
