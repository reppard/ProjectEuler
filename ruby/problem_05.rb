#2520 is the smallest number that can be divided by
#each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly
#divisible by all of the numbers from 1 to 20?
time = Time.new

class Integer
  def evenly_divisible_by? collection
    !collection.collect{|i| self % i == 0}.include?(false)
  end
end

n = 20

while !n.evenly_divisible_by?([11,13,14,16,17,18,19,20])
  n += 20
end

puts "Problem 05"
puts "Answer: #{n}"
puts "Time: #{Time.now - time}"
puts "--------------------------"

