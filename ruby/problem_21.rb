# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which
# divide evenly into n).

# If d(a) = b and d(b) = a, where a !=  b, then a and b are an amicable pair and each
# of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
# therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

time = Time.now

def d(n)
    (1..n).select{|i| i if n % i == 0 && i != n}.inject(&:+)
end

def has_pair?(n)
  a = d(n)
  b = d(a)
  n == b && a != b
end

puts (1..10000).select{|i| i if i.even? && has_pair?(i)}.inject(:+)
puts "Elapsed time: " + (Time.now - time).to_s
