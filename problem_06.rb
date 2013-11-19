#Problem Six
#Find the difference between the sum of the
#squares of the first one hundred natural
#numbers and the square of the sum.

time = Time.now

def sum_of_squares range
  range.collect{|i| i**2}.inject(:+)
end

def square_of_sums range
  range.inject(:+)**2
end

puts "Problem 06"
puts "Answer: #{square_of_sums((1..100)) - sum_of_squares((1..100))}"
puts "Time: #{Time.now - time}"
puts "--------------------------"

