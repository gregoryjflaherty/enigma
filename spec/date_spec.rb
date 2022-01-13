require 'rspec'
require './lib/date'
RSpec.describe do Date

  context 'setup' do
    let(:day) {Date.new('040289')}

    it 'exists' do
      expect(day).to be_a(Date)
    end

    it 'a_shift' do
      expect(day.a_shift).to be(3)
    end

    it 'b_shift' do
      expect(day.b_shift).to be(5)
    end

    it 'c_shift' do
      expect(day.c_shift).to be(2)
    end
  end
end
