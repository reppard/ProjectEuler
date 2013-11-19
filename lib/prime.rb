def is_prime? num
  collect = (2..Math.sqrt(num)).collect do |i|
              !(num % i == 0 && i < num)
            end
  !collect.include?(false)
end
