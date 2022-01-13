class Key
  attr_reader :all_digits, :a_key

  def initialize(all_digits)
    @all_digits = all_digits
    @a_key = all_digits[0..1].to_i
  end
end
require "pry"; binding.pry
