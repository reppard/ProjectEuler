time = Time.now

def number_of_distinct_terms start, fin
  collect = []
  (start..fin).each do |a|
    (start..fin).each do |b|
      collect << a**b
    end
  end
  collect.uniq.size
end

puts "Answer: #{number_of_distinct_terms 2, 100 }"
puts "Time: #{Time.now - time}"
