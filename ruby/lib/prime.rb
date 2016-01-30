def is_prime? num
  (2..Math.sqrt(num)).each do |i|
    return false if (num % i == 0 && i < num)
  end
  true
end
