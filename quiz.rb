=begin
 Create a program that will read in a quiz provided via a CSV file (more details below)
 and will then give the quiz to a user keeping track of how many questions they get right and
 how many they get incorrect. Regardless of whether the answer is correct or wrong the next
 question should be asked immediately afterwards.
The CSV file should default to `problems.csv` (example shown below),
 but the user should be able to customize the filename via a flag.
The CSV file will be in a format like below, where the first column is a question and
the second column in the same row is the answer to that question.
=end
require 'csv'

answers = Array.new
correct = 0
incorrect =0

CSV.read("problems.csv")

csv = CSV.open("problems.csv")

csv.each do |row |
puts "#{row[0]} is ="
answers.push(gets)

    if answers == row[1]
    correct += 1
    elsif answers != row[1]
    incorrect += 1

    end

end
puts "#{answers}"
puts "correct : #{correct}"
puts "incorrect : #{incorrect}"
