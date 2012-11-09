#Project 10
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.
time = Time.new
sum = 0
start = 3

puts "Calculating..."

def isPrime?(num)
  (2..Math.sqrt(num)).each { |i|
      if num % i == 0 && i < num
        return false
     end
  }
  true
end

while start < 2000000
  pri = isPrime?(start)
  if pri == true
    sum += start
  end
  start += 2
end
puts "Answer : " + (sum + 2).to_s
puts "Elapsed : " + (Time.new - time).to_s + " secs"
