class ProblemNineteen

end


class Years
  attr_accessor :range, :year

  def initialize range
    if range.class == Range
      @range = range.to_a
    else
      @range = range
    end
  end

  def all
    @range
  end

  def leap_year?(year)
    true if year % 4 == 0 && year % 100 != 0
  end

  class << self
    def leap_year?
      return self.year
    end
  end
end


class Months

  MONTH_HASH = {
  1     =>  31,
  2     =>  28,
  3     =>  31,
  4     =>  30,
  5     =>  31,
  6     =>  30,
  7     =>  31,
  8     =>  31,
  9     =>  30,
  10    =>  31,
  11    =>  30,
  12    =>  31
  }

  attr_accessor :year, :current

  def initialize year
    @year = Years.new(year)
  end

  def [] number
    @current = MONTH_HASH[number]
  end

  def number_of_days
    @current
  end

end
