(1..100).each{ |i|
  test = [i%3 == 0 ? true : false, i%5 == 0 ? true : false]
  case test
  when [true, false] then puts "Fizz"
  when [false, true] then puts "Buzz"
  when [true, true] then puts "FizzBuzz"
  else puts i.to_s
  end
}
