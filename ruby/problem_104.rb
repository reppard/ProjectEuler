fib = [1,1]
done = false
count = 2

def solved?(n)
  string = n.to_s
  if string.size >= 9
    pandigital?(string.slice((string.size - 9)..string.size)) && pandigital?(string.slice(0..8)) 
  end
end

def pandigital?(string)
  !string.match(/0/) && string.split(//).uniq.size == 9
end

while done != true
  fib << fib.inject(:+)
  fib.shift
  count += 1
  done = solved?(fib[1])
end

puts count
