##If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

##Find the sum of all the multiples of 3 or 5 below 1000.

class ProblemOne
  def initialize max
    @max = max
  end

  def multiple_of_three? num
    (num % 3) == 0
  end

  def multiple_of_five? num
    (num % 5) == 0
  end

  def collect_multiples
    (1..@max).select do |i|
      multiple_of_three?(i) || multiple_of_five?(i)
    end
  end

  def sum
    collect_multiples.inject(&:+)
  end
end
