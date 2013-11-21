#Project 10
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.
require './lib/prime'
time = Time.new
sum = 0
num = 3

while num < 2000000
  if is_prime?(num)
    sum += num
  end
  num += 2
end
puts "Answer : " + (sum + 2).to_s
puts "Elapsed : " + (Time.new - time).to_s + " secs"
