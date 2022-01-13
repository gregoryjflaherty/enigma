class Date
  attr_reader :last_four,
              :a_shift,
              :b_shift,
              :c_shift,
              :d_shift

  def initialize(date)
    @last_four = get_last_four(date)
    @a_shift = @last_four[0].to_i
  end

  def get_last_four(date)
    large_num = date.to_i ** 2
    large_num.to_s[-4..-1]
  end
end
