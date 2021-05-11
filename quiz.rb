require 'csv'

answers = Array.new

CSV.read("problems.csv")

csv = CSV.open("problems.csv")

csv.each do |row|
puts "#{row[0]} is ="
answers.push(gets)
end

puts "#{answers}"
