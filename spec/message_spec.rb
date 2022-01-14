require 'rspec'
require './lib/message'
RSpec.describe do Message

  context 'setup' do
    let(:message) {Message.new('Hello World')}

    it 'exists' do
      expect(message).to be_a(Message)
    end

    it 'has text input' do
      expect(message.text_input).to eq('Hello World')
    end
  end
end
