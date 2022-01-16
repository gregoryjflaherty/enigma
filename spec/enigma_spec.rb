require 'rspec'
require './lib/enigma'
require './lib/shift'
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
      expect(machine.date).to eq('040289')
    end

    it 'has a shift' do
      expect(machine.shift).to be_a(Shift)
    end

    it 'has a shift array' do
      expect(machine.shift.shift_array).to eq([4, 17, 25, 8])
    end

    it 'produces todays date' do
      no_date = Enigma.new("Greg", '01234')
      expect(no_date.date.class).to be_a(String)
      expect(no_date.date.length).to be(6)
    end

    it 'produces random key' do
      no_key = Enigma.new("Greg", '01234')
      expect(no_key.date.class).to be_a(String)
      expect(no_key.date.length).to be(6)
    end

    it 'gives encrypt hash' do
      output = {
        :encryption => '!lvjtsquwvbb!',
        :key => '01234',
        :date => '040289'
      }
      expect(machine.encrypt('!hello world!','01234', '040289')).to eq(output)
    end
  end
end
