#FizzBuzz

(1..100).each do |i|
  test = [i%3 == 0 ? true : false, i%5 == 0 ? true : false]
  case test
  when [true, false] then printf "Fizz "
  when [false, true] then printf "Buzz "
  when [true, true] then printf "FizzBuzz "
  else printf "#{i.to_s} "
  end
end
