class Key
  attr_reader :all_digits,
              :a_key,
              :b_key,
              :c_key,
              :d_key

  def initialize(all_digits)
    @all_digits = all_digits
    @a_key = all_digits[0..1].to_i
    @b_key = all_digits[1..2].to_i
    @c_key = all_digits[2..3].to_i
    @d_key = all_digits[3..4].to_i
  end
end
