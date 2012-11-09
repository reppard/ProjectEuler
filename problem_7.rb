#Problem 7
#What is the 10,001th prime number?

start = Time.new
primes = [2]
test = 3

def isPrime?(num)
  (2..Math.sqrt(num)).each { |i|
      if num % i == 0 && i < num
        return false
     end
  }
  true
end

while primes.size != 10001
  if isPrime?(test)
    primes << test
  end
  test += 2
end

puts "The 10000th prime is : " + primes.last.to_s
puts "Elapsed : " + (Time.new - start).to_s + " sec"
