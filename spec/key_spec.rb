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
      expect(key1.a_key).to be(12)
    end
  end
end
