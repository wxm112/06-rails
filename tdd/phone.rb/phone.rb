class Phone

  def initialize(number)
    @number = number
  end

  def number
    array = "0123456789".chars
    number_array = @number.chars.select {|i| array.include? i}
    if number_array.length == 10
      number_array.join
    elsif number_array.length == 11 and number_array[0] == '1'
      number_array[1..-1].join
    elsif number_array.length == 11 and number_array[0] != '1'
      "0000000000"
    elsif number_array.length == 9
      "0000000000"
    end
  end

  def to_s
    "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}"
  end

  def area_code
    @number[0..2]
    end
end