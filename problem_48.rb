#Problem 48
time = Time.new
sum = 0
(1..1000).each { |i| sum += i**i}
string = sum.to_s
puts "Answer: " + string[-10,10]
puts "Time Elapsed : " + (Time.new - time).to_s + " secs"