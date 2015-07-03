#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143
time = Time.now

class Integer
  def prime_factor_of? n
    n % self == 0
  end
end

largest = 0
n = 600851475143
(1..Math.sqrt(n)).each do |i|
    if i.prime_factor_of?(n)
      n /= i
      largest = i
    end
end

puts "Problem 03"
puts "Answer: #{largest}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
