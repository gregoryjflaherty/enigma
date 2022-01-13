class Key
  attr_reader :all_digits,
              :a_key,
              :b_key

  def initialize(all_digits)
    @all_digits = all_digits
    @a_key = all_digits[0..1].to_i
    @b_key = all_digits[1..2].to_i
  end
end
