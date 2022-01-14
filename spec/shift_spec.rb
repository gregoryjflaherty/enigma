require 'rspec'
require './lib/shift'
require './lib/key'
require './lib/date'
RSpec.describe do Shift

  context 'setup' do
    let(:shift) {Shift.new('01234', '040289')}

    it 'exists' do
      expect(shift).to be_a(Shift)
    end

    it 'has letters' do
      letters = ("a".."z").to_a << " "
      expect(shift.letters).to eq(letters)
    end

    it 'has a key' do
      expect(shift.key).to be_a(Key)
    end

    it 'has an offset' do
      expect(shift.offset).to be_a(Date)
    end

    it 'a shift' do
      expect(shift.a_shift).to be(4)
    end

    it 'b shift' do
      expect(shift.b_shift).to be(17)
    end

    it 'c shift' do
      expect(shift.c_shift).to be(25)
    end

    it 'd shift' do
      expect(shift.d_shift).to be(8)
    end
  end
end
