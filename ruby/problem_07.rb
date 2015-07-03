#Problem 7
#What is the 10,001th prime number?
require './lib/prime'

time = Time.new
count = 0
num = 1

while count != 10001
  num += 1
  if is_prime?(num)
    count += 1
  end
end

puts "Problem 07"
puts "Answer: #{num}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
