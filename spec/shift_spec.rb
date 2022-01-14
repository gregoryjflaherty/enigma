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

    it 'rotates' do
      @letters = ("a".."z").to_a << " "
      letter = 'a'
      shift_1 = 1
      expect(shift.rotate(@letters, letter, shift_1)).to eq('b')
    end

    it 'rotates bigly' do
      @letters = ("a".."z").to_a << " "
      letter = 'j'
      shift_1 = 25
      expect(shift.rotate(@letters, letter, shift_1)).to eq('h')
    end

    it 'changes message' do
      @letters = ("a".."z").to_a << " "
      message = 'abc'
      shift_array = [1, 1, 1]
      expect(shift.change(@letters, message, shift_array)).to eq('bcd')
    end
  end
end
