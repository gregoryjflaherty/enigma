module Producer
  def produce_key_set(key)
    key_set = []
    key.split("").each_cons(2) do |digit_1, digit_2|
      key_set << (digit_1 + digit_2).to_i
    end
    key_set
  end

  def get_last_four(date)
    large_num = date.to_i ** 2
    large_num.to_s[-4..-1]
  end

  def produce_offset_set(date)
    str_of_four = get_last_four(date)
    offset_set = str_of_four.split("").map {|digit| digit.to_i}
  end

  def produce_shift_array(key, date)
    shift_array = []
    key_set = produce_key_set(key)
    offset_set = produce_offset_set(date)
    key_set.each_with_index do |key, index|
      shift_array << once_around(key + offset_set[index])
    end
    shift_array
  end
  
  def produce_todays_date
    Time.now.strftime("%m%d%y")
  end

  def produce_rand_key
    rand(0..99999).to_s
  end
end
