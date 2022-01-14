require 'rspec'
require './lib/enigma'
RSpec.describe do Enigma

  context 'setup' do
    let(:machine) {Enigma.new("Greg", '01234', '040289')}

    it 'exists' do
      expect(machine).to be_a(Enigma)
    end

    it 'has a key' do
      expect(machine.key).to be_a(Key)
      expect(machine.key.all_digits).to eq('01234')
    end
  end
end
