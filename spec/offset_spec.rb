require 'rspec'
require './lib/offset'
RSpec.describe do Offset

  context 'setup' do
    let(:day) {Offset.new('040289')}

    it 'exists' do
      expect(day).to be_a(Offset)
    end

    it 'gets_last_four' do
      expect(day.last_four).to eq('3521')
    end

    it 'a_offset' do
      expect(day.a_offset).to be(3)
    end

    it 'b_offset' do
      expect(day.b_offset).to be(5)
    end

    it 'c_offset' do
      expect(day.c_offset).to be(2)
    end

    it 'd_offset' do
      expect(day.d_offset).to be(1)
    end
  end
end
