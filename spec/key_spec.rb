require 'rspec'
require './lib/key'
RSpec.describe do Key

  context 'setup' do
    let(:key1) {Key.new('01234')}

    it 'exists' do
      expect(key).to be_a(Key)
    end
  end
end
