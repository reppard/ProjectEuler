puts "Problem 14"
time = Time.new

def getChain(num)
  array = []
  array << num
  until num == 1
    num = (num%2==0 ? num/2 : 3*num+1)
    array << num
  end
  return array.size    
end

start = 0
maxchain = 0

1000000.downto(1){ |i| start,maxchain = i,getChain(i) if getChain(i) > maxchain }

puts "Chain length : " + maxchain.to_s
puts "Starting number : " + start.to_s
puts "Time Elapsed : " + (Time.new - time).to_s + " secs"
  
