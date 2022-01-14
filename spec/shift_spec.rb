require 'rspec'
require './lib/shift'
RSpec.describe do Shift

  context 'setup' do
    let(:shift) {Shift.new}

    it 'exists' do
      expect(shift).to be_a(Shift)
    end

    it 'has letters' do
      letters = ("a".."z").to_a << " "
      expect(shift.letters).to eq(letters)
    end 
  end
end
