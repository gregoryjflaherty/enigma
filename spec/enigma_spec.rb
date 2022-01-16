require 'rspec'
require './lib/enigma'
RSpec.describe do Enigma

  context 'setup' do
    let(:machine) {Enigma.new("Greg", '01234', '040289')}

    it 'exists' do
      expect(machine).to be_a(Enigma)
    end

    it 'has a key' do
      expect(machine.key).to eq('01234')
    end

    it 'has a date' do
      expect(machine.key).to eq('040289')
    end

    it 'has an offset/date' do
      expect(machine.date).to be_a(Offset)
    end

    it 'has a shift array' do
      expect(machine.shift.shift_array).to eq([4, 17, 25, 8])
    end

    it 'gives encrypt hash' do
      output = {
        :encryption => '!lvjtsquwvbb!',
        :key => '01234',
        :date => '040289'
      }
      expect(machine.encrypt('!hello world!''01234', '040289')).to eq(output)
    end
  end
end
