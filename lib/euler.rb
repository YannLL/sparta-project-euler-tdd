class Euler

  attr_accessor :multiple_of_three_array, :multiple_of_five_array, :sum_three, :sum_five, :sum_all

  def initialize
    @multiple_of_three_array = []
    @multiple_of_five_array = []
    @sum_three = 0
    @sum_five = 0
    @sum_all = 0
  end

  def multiple_of_three(start_num,end_num)
    (start_num...end_num).each do |i|
      if i % 3 == 0
        # puts "#{i} is a multiple of 3"
        @multiple_of_three_array.push i
      end
    end
    @multiple_of_three_array
  end

  def multiple_of_five(start_num,end_num)
    (start_num...end_num).each do |i|
      if i % 5 == 0
        @multiple_of_five_array.push i
      end
    end
    @multiple_of_five_array
  end

  def sum_of_mthree
    multiple_of_three(1,10)
    @sum_three = @multiple_of_three_array.reduce(0,:+)
    @sum_three
  end

  def sum_of_mfive
    multiple_of_five(1,10)
    @sum_five = @multiple_of_five_array.reduce(0,:+)
    @sum_five
  end

  def sum_of_all
    multiple_of_three(1,1000)
    multiple_of_five(1,1000)
    @sum_three = @multiple_of_three_array.reduce(0,:+)
    @sum_five = @multiple_of_five_array.reduce(0,:+)
    @sum_all = @sum_three + @sum_five
    puts @sum_all
  end

end

euler = Euler.new
euler.sum_of_all
