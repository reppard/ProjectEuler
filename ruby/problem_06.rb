#Problem Six
#Find the difference between the sum of the
#squares of the first one hundred natural
#numbers and the square of the sum.

def sum_of_squares range
  range.collect{|i| i**2}.inject(:+)
end

def square_of_sums range
  range.inject(:+)**2
end
