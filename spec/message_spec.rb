require 'simplecov'
SimpleCov.start
require './lib/message'

require 'rspec'
RSpec.describe do Message

  context 'setup' do
    let(:message) {Message.new}

    it 'exists' do
      expect(message).to be_a(Message)
    end
  end
end
