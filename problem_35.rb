time = Time.now

def isPrime?(num)
  (2..Math.sqrt(num)).each { |i|
      if num % i == 0 && i < num
        return false
     end
  }
  true
end

def rotations(num)
  results = []
  string = num.to_s
  (string.size - 1).times do
    string << string.slice!(0)
    results << string.to_i
  end
  results
end

count = 0
primes = (2..1000000).select{|num| isPrime?(num)}

primes.each do |prime|
  count +=1 if rotations(prime).all?{|num| isPrime?(num)}
end

puts count
puts "Time #{Time.now - time}"
