require 'rspec'
require './lib/message'
RSpec.describe do Message

  context 'setup' do
    let(:message) {Message.new('Hello World')}

    it 'exists' do
      expect(message).to be_a(Message)
    end
  end
end
