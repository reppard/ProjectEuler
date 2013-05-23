# An irrational decimal fraction is created by concatenating the positive integers:

# 0.123456789101112131415161718192021...

# It can be seen that the 12th digit of the fractional part is 1.

# If dn represents the nth digit of the fractional part, find the value of the following expression.

# d1 *  d10 *  d100 *  d1000 * d10000 * d100000 * d1000000

time = Time.new

digits = (1..1000000).select{|x|x.to_s}.join
collection = []

i = 1
while i <= 1000000
  collection << digits[i-1].to_i
  i *= 10
end

puts "Answer: #{collection.inject(:*)}"
puts "Time: #{Time.new - time}s"

