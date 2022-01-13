require 'rspec'
require './lib/key'
RSpec.describe do Key

  context 'setup' do
    let(:key1) {Key.new('01234')}

    it 'exists' do
      expect(key1).to be_a(Key)
    end

    it 'a_key' do
      expect(key1.a_key).to be(1)
    end

    it 'b_key' do
      expect(key1.b_key).to be(12)
    end

    it 'c_key' do
      expect(key1.c_key).to be(23)
    end

    it 'd_key' do
      expect(key1.d_key).to be(34)
    end
  end
end
