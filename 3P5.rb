require 'securerandom'
=begin
Unique Random password generator,with gradually adding options
of different kinds(include alphabets / numeric / special-characters / length etc
as desired by the user).
=end

BEGIN{puts "Welcome to Unique Random password generator,You can add alphabets,numeric,special characters, specify length gradually"}

$password

def get_random_pass()
   puts "How many alphabets you want in your password :"
   a = gets
   a = a.to_i

    source=("a".."z").to_a + ("A".."Z").to_a
    key=""
    a.times{ key += source[rand(source.size)].to_s }

puts "How many numeric you want in your password :"
n = gets
n = n.to_i

    source= (0..9).to_a
    key1=""
    n.times{ key1 += source[rand(source.size)].to_s }

puts "How many special-characters you want in your password :"
sp = gets
sp = sp.to_i

    source= ["_","-",".","@","!","#","$","%","^","&","*"]
    key2=""

    sp.times{ key2 += source[rand(source.size)].to_s }
    key = key1 + key2 +key
    key = key.chars.shuffle.join
    return key

end

password = get_random_pass()
puts "#{password}"
