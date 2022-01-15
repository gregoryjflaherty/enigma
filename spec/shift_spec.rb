require 'rspec'
require './lib/shift'
require './lib/key'
require './lib/offset'
require './lib/producer'
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
      expect(shift.key).to eq('01234')
    end

    it 'has an offset' do
      expect(shift.offset).to eq('040289')
    end

    it 'produces_key_set' do
      expect(shift.produce_key_set('01234')).to eq([01, 12, 23, 34])
    end

    it 'produces_offset_set' do
      expect(shift.produce_offset_set('040289')).to eq([01, 12, 23, 34])
    end

    xit 'has a shift array' do
      expect(shift.shift_array).to eq([4, 17, 25, 8])
    end

    xit 'rotates' do
      @letters = ("a".."z").to_a << " "
      letter = 'a'
      shift_1 = 1
      expect(shift.rotate(@letters, letter, shift_1)).to eq('b')
    end

    xit 'rotates bigly' do
      @letters = ("a".."z").to_a << " "
      letter = 'j'
      shift_1 = 25
      expect(shift.rotate(@letters, letter, shift_1)).to eq('h')
    end

    xit 'changes message' do
      @letters = ("a".."z").to_a << " "
      message = 'abcd'
      shift_array = [1, 1, 1, 1]
      expect(shift.change(@letters, message, shift_array)).to eq('bcde')
    end

    xit 'changes message bigly' do
      @letters = ("a".."z").to_a << " "
      message = 'hello world'
      shift_array = [4, 17, 25, 8]
      expect(shift.change(@letters, message, shift_array)).to eq('lvjtsquwvbb')
    end

    xit 'ignores symbols' do
      @letters = ("a".."z").to_a << " "
      message = '!hello world!'
      shift_array = [4, 17, 25, 8]
      expect(shift.change(@letters, message, shift_array)).to eq('!lvjtsquwvbb!')
    end

    xit 'ignores symbols bigly' do
      @letters = ("a".."z").to_a << " "
      message = '!@#$hi$#@!'
      shift_array = [4, 17, 25, 8]
      expect(shift.change(@letters, message, shift_array)).to eq('!@#$lz$#@!')
    end
  end
end
