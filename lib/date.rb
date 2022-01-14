class Date
  attr_reader :last_four,
              :a_offset,
              :b_offset,
              :c_offset,
              :d_offset

  def initialize(date)
    @last_four = get_last_four(date)
    @a_offset = @last_four[0].to_i
    @b_offset = @last_four[1].to_i
    @c_offset = @last_four[2].to_i
    @d_offset = @last_four[3].to_i
  end

  def get_last_four(date)
    large_num = date.to_i ** 2
    large_num.to_s[-4..-1]
  end
end
