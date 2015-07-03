# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.
# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

time = Time.now

def sum_of_digit_factorials(num)
  digits = num.to_s.split(//)
  digits.collect{|x| x == "0" ? 1 : (1..x.to_i).inject(:*)}.inject(:+)
end

puts "Answer: #{(10..50000).select{|x| x == sum_of_digit_factorials(x) }.inject(:+)}"
puts "Time: #{Time.now - time}"
