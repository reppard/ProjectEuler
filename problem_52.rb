time = Time.new

def sort_it(n)  
  n.each_char.map{|i| i.to_i}.sort
end

def check_it(tests)  
  a,b,c,d,e = sort_it(tests[0]),sort_it(tests[1]),
  sort_it(tests[2]),sort_it(tests[3]),sort_it(tests[4])  
  return true if (a == b) && (a == c) && 
    (a == d) && (a == e)
end


array = [2,3,4,5,6]
tests = []
mult = 1
answer = 0
loop do
  array.each{ |i|
        tests << (i*mult).to_s
        answer = mult }
  break if check_it(tests)
  mult+=1
  tests = []
end
puts "Answer : " + answer.to_s
puts "Elapsed : " + (Time.new - time).to_s + " secs"