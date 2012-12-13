class ProblemNineteen

end


class Years
  attr_accessor :range

  def initialize range
    @range = range.to_a
  end

  def all
    @range
  end

  def leap_year?(year)
    true if year % 4 == 0 && year % 100 != 0
  end

end


class Months

end
