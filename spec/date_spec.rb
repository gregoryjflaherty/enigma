require 'rspec'
require './lib/date'
RSpec.describe do Key

  context 'setup' do
    let(:day) {Date.new('040289')}

    it 'exists' do
      expect(day).to be_a(Date)
    end
  end
end 
