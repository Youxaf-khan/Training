=begin
Set occurrences/frequency of elements by generating
an array of elements with random numbers from 0-10 (Use hash)
=end
array = Array.new(10) {rand(10)}
puts "#{array}"
a = array.tally
puts "#{a}"
